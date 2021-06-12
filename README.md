# Introduction

My plan is for this repository to house the code necessary to generate
basically a WebAssembly version of the data backing the [Intel
Intrinsics Guide](https://software.intel.com/sites/landingpage/IntrinsicsGuide/)
or the [Arm NEON Intrinsics
Reference](https://developer.arm.com/architectures/instruction-sets/simd-isas/neon/intrinsics).

Note: please feel free to use the "Discussion" tab on this repo to
discuss the current implementation.  Nothing is set in stone yet; I'm
posting this (very) early to get feedback.

This includes information like:

 * Documentation of the WebAssembly instructions (stolen from the [WASM
   SIMD proposal](https://github.com/WebAssembly/simd/blob/master/proposals/simd/SIMD.md)).
 * Mappings between instructions and C APIs (both
   [wasm_simd128.h](https://github.com/llvm/llvm-project/blob/main/clang/lib/Headers/wasm_simd128.h) and
   [WAV](https://github.com/nemequ/wav)).
 * Opcodes for each instruction.
 * Expected implementations.  This one is complicated.
 * Performance information (uOps and latency) of the expected implementations.

If I've forgotten something, please let me know.

The expected implementations is the tricky part.  To implement this,
what I'm doing is creating trivial C files for each instruction (see
lowering/*.c) which use [SIMDe](https://github.com/simd-everywhere/simde).
We then use clang to generate assembly from these on various targets,
then LLVM-MCA to extract the instructions and timing information.

This actually works quite well, the problem is that *currently* the
implementations in SIMDe suck.  I only added an implementation of the
wasm_simd128.h API recently, and really just focused on getting the
portable implementations and tests in place, so most of the functions
aren't optimized yet.

Using SIMDe does feel kind of self-serving to me, but I honestly did
look into other possibilities and this just made for by far the
simplest and most maintainable implementation.  If you have a better
idea I really am open to it.

## Generating the Data

The input data about the instructions comes from from
data/instructions.yml.  Information about targets to use to generate
data on implementations comes from data/targets.yml.

Every instruction will also need a lowering/${INSTRUCTION}.c source
file with a trivial implementation.  Honestly, this could probably
be generated based on the data in instructions.yml, but it's easy
enough to write these that I don't plan on bothering to do so.

 1. Use lowering/generate-makefile.py to generate a Makefile.
 2. Run `make` in the lowering/ directory; you can use
    `make EXTRA_CFLAGS='-Ipath/to/simde'` to add the include
    directory for SIMDe, or if you don't have a copy handy just
    `git clone https://github.com/simd-everywhere/simde-no-tests simde`
    in the lowering/ directory.  I strongly recommend using `-j` as
    well.
 3. Run the generate.py script in the scripts/ directory to generate
    the final data.
    
Currently it outputs YAML for readability, but this will change to JSON
soon.  If you'd like to see an example of the current output, I've
uploaded a copy to:

  https://gist.github.com/nemequ/356f7356b1373bea2d58bdd3e69769b6

I'll probably set up GitHub Actions or something to automatically
deploy an updated version every time a new commit hits the main branch
in the relatively near future.

## Future Directions

The big items are

 1. Finish adding data to instructions.yml + lowering/*.c
 2. Improve implementations in SIMDe
 3. Create an HTML interface similar to Intel's and Arm's.

I'm starting work on #3 right now…  I haven't done much front-end work
in a while, and it's a good opportunity to play with Dart for web.  I
should have a better idea on whether there will be a student for #2
soon.
