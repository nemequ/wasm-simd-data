#!/bin/python3

import sys, os, yaml, json, re

import pprint
pp = pprint.PrettyPrinter(indent = 2)

families = {}
for filename in os.listdir(os.path.join(os.path.dirname(__file__), '..', 'data', 'families')):
  if not filename.endswith(".yml"):
    continue

  with open(os.path.join(os.path.dirname(__file__), '..', 'data', 'families', filename), 'r') as fp:
    families[filename[:-4]] = yaml.safe_load(fp)

targets = []
with open(os.path.join(os.path.dirname(__file__), "..", "data", "targets.yml"), 'r') as fp:
  targets = yaml.safe_load(fp)

def parse_mca_file(target, filename):
  res = []

  with open(filename, 'r') as fp:
    sections = []
    current_section = ''

    line = fp.readline()

    while line:
      current_section = current_section + line

      if line[0] == ']' or line[0] == '}':
        sections.append(json.loads(current_section))
        current_section = ''

      line = fp.readline()

    for idx, instruction in enumerate(sections[0]['Instructions']):
      inst_call = instruction.split('\t')

      if inst_call[0] == target['return_insn']:
        continue

      data = {
        'name': inst_call[0],
        'latency': sections[2][idx]['Latency'],
        'uops': sections[2][idx]['NumMicroOpcodes']
      }
      if len(inst_call) > 1:
        data['arguments'] = inst_call[1].split(', ')

      res.append(data)

  return res

class ImplementationList:
  def __init__(self):
    self.__impls = []

  def add(self, target, option, instructions, imm = None):
    serialized_processed = ''
    data = {
      "target": target['name'],
      "instructions": instructions,
      "immediate": imm,
      "option": option['name'],
      'serialized': '',
    }
    self.__impls.append(data)

    for instruction_idx, instruction in enumerate(instructions):
      serialized_processed = serialized_processed + instruction['name'] + '\t'
      args = []

      if 'arguments' in instruction:
        for idx, arg in enumerate(instruction['arguments']):
          matched = False

          for imm_regex in target['imm_regex']:
            regex = imm_regex['regex']
            m = regex.match(arg)
            if m != None:
              matched = True

              mi = list(m.groups())
              mi[regex.groupindex['value'] - 1] = '<{...}>'
              args.append("".join(mi))

              if not 'replacements' in data:
                data['replacements'] = []
              data['replacements'].append((instruction_idx, idx, int(m.group('value'))))

              instruction['arguments'][idx] = ''.join(mi)

              break;

        if not matched:
          args.append(arg)

      serialized_processed = serialized_processed + ', '.join(args) + '\n'
      data['serialized'] = serialized_processed

  # Combine all the serialized instructions for each immediate into a
  # single string, then remove all duplicated sets of implementation
  # (i.e., if SSE2 and SSE3 are the same, drop SSE3).
  def __get_pruned(self):
    groups = {}
    for impl in self.__impls:
      if not impl['option'] in groups:
        groups[impl['option']] = { "serialized": {}, "implementations": {} }
      group = groups[impl['option']]

      group['serialized'][impl['immediate']] = impl['serialized']
      group['implementations'][impl['immediate']] = impl

    impl_idx = {}
    impl_list = []
    for opt in groups.keys():
      group = groups[opt]
      serialized = '######\n'.join(group['serialized'].values())

      if not serialized in impl_idx:
        impl_idx[serialized] = True
        impl_list.append({
          "option": opt,
          "implementations": group['implementations']
        })

    return impl_list

  # Take the list from __get_pruned and get rid of duplicate
  # instructions *within* an implementation.  For example, if
  # immediates 1-3 all differ by only a constant, merge them
  # into a single parameterized version.
  def __get_merged(self):
    by_opt = {}
    impls = []
    for optimpl in self.__get_pruned():
      map = {}

      for imm in optimpl['implementations']:
        impl = optimpl['implementations'][imm]

        if not impl['option'] in by_opt:
          by_opt[impl['option']] = []
          impls.append({
            'option': impl['option'],
            'implementations': by_opt[impl['option']]
          })

        if not impl['serialized'] in map:
          map[impl['serialized']] = {
            'option': impl['option'],
            'immediates': [],
            'instructions': impl['instructions']
          }

          by_opt[impl['option']].append(map[impl['serialized']])

        map[impl['serialized']]['immediates'].append(imm)
        if 'replacements' in impl:
          if not 'replacements' in map[impl['serialized']]:
            map[impl['serialized']]['replacements'] = []
          for replacement in impl['replacements']:
            map[impl['serialized']]['replacements'].append({
              'immediate': imm,
              'instruction': replacement[0],
              'argument': replacement[1],
              'value': replacement[2],
            })

    return impls

  # Now we want to replace the immediate arguments with a map of their
  # possible values depending on the immediate.  If the immediate
  # itself is the value (as is often the case for operations on lanes)
  # we'll just replace them with the parameter name (i.e., "imm").
  def extract(self):
    data = self.__get_merged()

    for entry in data:
      for impl in entry['implementations']:
        del impl['option']
        potential_imm = {}

        if not 'replacements' in impl:
          continue

        for replacement in impl['replacements']:
          k = str(replacement['instruction']) + ',' + str(replacement['argument'])
          if not k in potential_imm:
            potential_imm[k] = {}

          if replacement['immediate'] == replacement['value']:
            if not replacement['immediate'] in potential_imm:
              potential_imm[k][replacement['immediate']] = True
          else:
            if not replacement['immediate'] in potential_imm:
              potential_imm[k][replacement['immediate']] = False

        for pos in potential_imm.keys():
          posa = pos.split(',')
          insn_n = int(posa[0])
          arg_n = int(posa[1])

          if False in potential_imm[pos].values():
            # The value isn't the same as the immediate parameter
            args = []
            replacement_values = []
            for replacement in impl['replacements']:
              if replacement['instruction'] == insn_n and replacement['argument'] == arg_n:
                replacement_values.append(replacement['value'])
                args.append(str(replacement['immediate']) + ': ' + str(replacement['value']))

            if len(list(set(replacement_values))) == 1:
              impl['instructions'][insn_n]['arguments'][arg_n] = impl['instructions'][insn_n]['arguments'][arg_n].replace('<{...}>', str(replacement_values[0]))
            else:
              impl['instructions'][insn_n]['arguments'][arg_n] = impl['instructions'][insn_n]['arguments'][arg_n].replace('<{...}>', '<{ ' + ', '.join(args) + ' }>')

          else:
            # TODO: assumes immediate is named imm, which IIRC is
            # always true in the in the WASM SIMD spec, but we should
            # probably not assume.
            impl['instructions'][insn_n]['arguments'][arg_n] = impl['instructions'][insn_n]['arguments'][arg_n].replace('<{...}>', '<imm>')

        if len(impl['immediates']) == 1 and impl['immediates'][0] == None:
          del impl['immediates']

        if 'replacements' in impl:
          del impl['replacements']

    return data

def read_mca(insn_name, target_name):
  family = None
  instruction = None
  target = None

  impls = ImplementationList()
  sequences = []

  insn_split = insn_name.split('.')

  for family_name in families:
    if insn_split[1].startswith(family_name):
      family = families[family_name]

      for inst in family['instructions']:
        if inst['name'] == insn_name:
          instruction = inst
          break

      break
  assert family != None

  for tgt in targets:
    if tgt['name'] == target_name:
      target = tgt

      for expr in tgt['imm_syntax']:
        if not 'imm_regex' in tgt:
          tgt['imm_regex'] = []

        tgt['imm_regex'].append({
          'expression': expr,
          'regex': re.compile(expr)
        })

      break
  assert target != None

  imm_lane_type = 0
  for param in instruction['params']:
    if param['type'].startswith('ImmLaneIdx'):
      imm_name = param['name']
      imm_lane_type = int(param['type'][10:])

  for option in target['options']:
    if imm_lane_type > 0:
      for imm_value in range(imm_lane_type):
        path = os.path.join(os.path.dirname(__file__), 'out', '.'.join([instruction['name'], target['name'], option['name'], str(imm_value), 'mca']))
        sequences.append({
          'imm': imm_value,
          'options': option['name'],
          'instructions': parse_mca_file(target, path)
        })
        impls.add(target, option, parse_mca_file(target, path), imm_value)
    else:
      path = os.path.join(os.path.dirname(__file__), 'out', '.'.join([instruction['name'], target['name'], option['name'], 'mca']))
      sequences.append({
          'options': option['name'],
        'instructions': parse_mca_file(target, path)
      })
      impls.add(target, option, parse_mca_file(target, path))

  instructions = impls.extract()
  return instructions

data = read_mca(sys.argv[1], sys.argv[2])
if len(sys.argv) > 3:
  with open(sys.argv[3], 'w') as outfp:
    json.dump(data, outfp, indent = 2)
else:
  pp.pprint(data)
