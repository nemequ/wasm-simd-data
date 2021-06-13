# Data Format

Each `*.yml` file in this directory should contain information on one
family of instructions, using the format outlined in this document.
Honestly, I suspect it will be easier to just look at an example or two
than read this document, but it's here if you want it.

## title

A human-readable title for the instruction.  Note that this much match
what is in the WASM SIMD proposal *exactly* since it will be used to
generate links to the specific section in the document, and GitHub
generates identifiers for each section based on the name.

## description

A human-readable description of the instruction.  Currently these are
just stolen from the SIMD proposal, but I need to check on the license
situation.

## operation

The operation from the SIMD proposal.  I'm not sure if this is a real
language or pseudo-code.

## instructions

List of instructions within this function family.

### name

The name of the instruction.  Should not include any argumets.

### opcode

The opcode of the instruction.  See
https://github.com/WebAssembly/simd/blob/main/proposals/simd/NewOpcodes.md
for the list.

### params

List of parameters for the instruction

#### name

Parameter name.

#### type

Parameter type.  Note that this may include square brackets with a
numeric value inside to signify an array and the length of the array.
For example, `ImmByte[16]`.

### intrin

List of instinsics from [wasm_simd128.h](https://github.com/llvm/llvm-project/blob/main/clang/lib/Headers/wasm_simd128.h).

#### name

Name of the intrinsic (e.g., `wasm_i8x16_load`).

#### alias

Optional list of aliases for this function.  I don't *think* this is
currently going to be used for wasm_simd128.h, unless we decide to
include deprecated functions.

#### return

Type of the return value.  Generally `v128_t`.

#### params

List of parameters.

##### type

Type of the parameter.

##### name

Name of the parameter.

##### map

Which parameter in the instruction this parameter maps to.

### wav

List of [WAV](https://github.com/nemequ/wav/blob/main/wav.h) functions
which map to this instruction.

#### name

Name of the intrinsic (e.g., `wasm_i8x16_load`).

#### alias

Optional list of aliases for this function (*e.g.*, an alias for
`wav_i32x4_add` would be `wav_add`).

#### return

Type of the return value.  Generally one of the `wav_AxB_t` types.

#### params

List of parameters.

##### type

Type of the parameter.  Generally one of the `wav_AxB_t` types.

##### name

Name of the parameter.

##### map

Which parameter in the instruction this parameter maps to.
