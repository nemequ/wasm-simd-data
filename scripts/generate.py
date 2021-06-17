#!/bin/python3

import sys, os, yaml, json

import pprint
pp = pprint.PrettyPrinter(indent = 2)

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
    for target in targets:
      with open(os.path.join(os.path.dirname(__file__), "..", "lowering", "out", '.'.join([ inst['name'], target['name'], 'json' ])), 'r') as fp:
        inst['lowering'] = json.load(fp)


json.dump(families, sys.stdout, indent = 2)
