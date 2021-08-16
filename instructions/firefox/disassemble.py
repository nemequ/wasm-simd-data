#!/bin/python3
import sys
import json
from capstone import *

code = b''
for line in sys.stdin:
    code += bytes.fromhex(line)

md = Cs(CS_ARCH_X86, CS_MODE_64)
md.detail = True

insts = []
for inst in md.disasm(code, 0x1000):
    # It is currently easier to re-format the operand string than inspect the
    # operands directly using `md.detail = True` and `inst.operands`.
    args = map(str.strip, inst.op_str.split(','))
    insts.append({'name': inst.mnemonic, 'arguments': list(args)})

print(json.dumps(insts, indent=2))
