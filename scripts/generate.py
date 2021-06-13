#!/bin/python3

import sys, os, yaml, json

import pprint
pp = pprint.PrettyPrinter(indent = 2)

families = {}
for filename in os.listdir(os.path.join('..', 'data', 'families')):
  if not filename.endswith(".yml"):
    continue

  with open(os.path.join('..', 'data', 'families', filename), 'r') as fp:
    families[filename[:-4]] = yaml.safe_load(fp)

targets = {}
with open(os.path.join("..", "data", "targets.yml"), 'r') as fp:
  targets = yaml.safe_load(fp)

for family_name in families.keys():
  family = families[family_name]

  if not "instructions" in family:
    continue

  for inst in family["instructions"]:
    for target in targets:
      unique_implementations = []

      for option in target["options"]:
        mca_sections = []

        with open(os.path.join('..', 'lowering', ".".join([ inst["name"], target["name"], option["name"], "json" ]))) as jsonfp:
          inside_data = False
          insn_list = ""

          cur_line = jsonfp.readline()
          while cur_line:
            insn_list = insn_list + cur_line
            if not cur_line.startswith(' '):
              inside_data = not inside_data

              if not inside_data:
                mca_sections.append(json.loads(insn_list))
                insn_list = ''

            cur_line = jsonfp.readline()

        insn_list = []
        insn_num = 0
        for insn in mca_sections[0]["Instructions"]:
          timing = mca_sections[2][insn_num]
          insn_info = insn.split('\t')

          if insn_info[0] == target["return_insn"]:
            continue

          insn_data = {
            "name": insn_info[0],
            "uOps": timing["NumMicroOpcodes"],
            "latency": timing["Latency"]
          }

          if len(insn_info) > 1:
            insn_data["arguments"] = insn_info[1]

          insn_list.append(insn_data)

          insn_num = insn_num + 1

        # If this is the same as a previous implementation, skip it.
        serialized = json.dumps(insn_list)
        if serialized in unique_implementations:
          continue
        else:
          unique_implementations.append(serialized)

        if not "implementations" in inst:
          inst["implementations"] = {}

        if not target["name"] in inst["implementations"]:
          inst["implementations"][target["name"]] = []

        inst["implementations"][target["name"]].append({
          "options": option["name"],
          "instructions": insn_list
        })

json.dump(families, sys.stdout, indent = 2)
