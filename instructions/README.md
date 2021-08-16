This directory contains several parts:
 - `c`: contains one C file for each Wasm SIMD instruction
 - `wat`: contains one WAT file for each Wasm SIMD instruction (generated from
   `c` but checked in for later reuse)
 - `firefox`: provides a mechanism to lower each Wasm SIMD instruction to x86
   machine code and subsequently disassemble it, generating a JSON file with the
   lowering for each instruction.

To view the lowerings:
```
cd firefox
make
cat out/*.json
```

### Pre-requisites

The `firefox` `Makefile` will retrieve the latest SpiderMonkey shell but
disassembly requires the Python version of capstone: `pip3 install capstone
--user`.
