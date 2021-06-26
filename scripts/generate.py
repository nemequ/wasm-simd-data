#!/bin/python3

import sys, os, yaml, json, subprocess

import pprint
pp = pprint.PrettyPrinter(indent = 2)

simde_head = None
simde_wasm_simd128 = []
with open(os.path.join(os.path.dirname(__file__), '..', 'simde', 'simde', 'wasm', 'simd128.h'), 'r') as fp:
  line = fp.readline()

  while line:
    simde_wasm_simd128.append(line)

    line = fp.readline()

  process = subprocess.Popen(['git', '--git-dir', 'simde/.git', 'rev-parse', 'HEAD'], stdout = subprocess.PIPE, close_fds = True)
  simde_head = process.stdout.read().strip().decode('ascii')

families = {}
for filename in os.listdir(os.path.join(os.path.dirname(__file__), '..', 'data', 'families')):
  if not filename.endswith(".yml"):
    continue

  with open(os.path.join(os.path.dirname(__file__), '..', 'data', 'families', filename), 'r') as fp:
    families[filename[:-4]] = yaml.safe_load(fp)

targets = {}
with open(os.path.join(os.path.dirname(__file__), "..", "data", "targets.yml"), 'r') as fp:
  targets = yaml.safe_load(fp)

for family_name in families.keys():
  family = families[family_name]

  if not "instructions" in family:
    continue

  for inst in family["instructions"]:
    if not family_name in ['shuffle']:
      for target in targets:
        with open(os.path.join(os.path.dirname(__file__), "..", "lowering", "out", '.'.join([ inst['name'], target['name'], 'json' ])), 'r') as fp:
          data = json.load(fp)
          if not 'lowering' in inst:
            inst['lowering'] = []
          inst['lowering'].append({ 'arch': target['name'], 'options': data })

    func_line_anchor = -1
    simde_name = 'simde_' + inst['intrin'][0]['name'] + ' ('
    for line_num in range(0, len(simde_wasm_simd128)):
      if simde_wasm_simd128[line_num].startswith(simde_name):
        func_line_anchor = line_num
        break

    if func_line_anchor != -1:
      simde_line_begin = func_line_anchor
      simde_line_end = func_line_anchor

      while simde_line_begin > 1 and simde_wasm_simd128[simde_line_begin - 1] != '\n':
        simde_line_begin = simde_line_begin - 1

      while simde_line_end < len(simde_wasm_simd128) and simde_wasm_simd128[simde_line_end] != '}\n':
        simde_line_end = simde_line_end + 1

      inst['simde'] = "https://github.com/simd-everywhere/simde/blob/%s/simde/wasm/simd128.h#L%d-L%d" % (simde_head, simde_line_begin + 1, simde_line_end + 1)


# I feel like there has to be a better way…
def sort_dict(dict):
  res = {}
  for k in sorted(dict):
    res[k] = dict[k]
  return res

families = sort_dict(families)

if len(sys.argv) > 1:
  with open(sys.argv[1], 'w') as outfp:
    json.dump(families, outfp)
else:
  json.dump(families, sys.stdout, indent = 2)
