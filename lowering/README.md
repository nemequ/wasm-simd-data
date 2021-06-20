# Lowering

This folder contains code to generate information on how WASM SIMD
instructions are expecetd to be lowered on various architectures.  For
reasons which will be explained soon, this data should no currenly be
considered to be even close to accurate.

If you're only interested in generating the data, you just need to
generate a makefile (`./generate-makefile.py > Makefile`, then run
`make -j`).  If you want to know how it works…

To generate the lowering data, we first use trivial C files which
contain a single call to a WASM function.  These files are named as
instruction_name.c in this directory.

These functions are implemented using [SIMD
Everywhere](https://github.com/simd-everywhere/simde) (SIMDe), which
contains portable implementations which can be used by the compiler
(clang) to generate code for virtually any target.  SIMDe also contains
optimized implementations using platform-specific intrinsics, but these
implementations are not yet complete, meaning many functions will rely
on autovectorization by the compiler, which can be far from optimal.
This should change soon as optimized implementations are merged into
SIMDe; please be patient (and/or submit patches).

The next step is to use these C files to generate assembly for each
target architecture, set of options (SSE, AVX, NEON, etc.), and, for
instructions which use immediate mode parameers, every possible value
of the immediate.

We then use LLVM-MCA to extract timing information from each assembly
file then `parse_mca.py` is used to process that information, removing
duplicate lowerings and merging some similar ones, and output JSON data
which can then be included in the final output.
