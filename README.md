# WASM SIMD Data

This repository contains code and data which can be used to generate
a JSON file containing information about the WASM SIMD proposal.  For
an example of the output, see [this
gist](https://gist.github.com/nemequ/356f7356b1373bea2d58bdd3e69769b6).
Note that the current output contains many more instructions.

Currently, we have complete data for the [WebAssembly 128-bit packed
SIMD Extension](https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md).
We intend to add data for other proposals, such as the [Relaxed SIMD
proposal for WebAssembly](https://github.com/WebAssembly/relaxed-simd)
and the [Flexible Vectors Proposal for
WebAssembly](https://github.com/WebAssembly/flexible-vectors/) as they
mature.

The data/ directory contains descriptions of the API, including
opcodes, instruction names and parameters, as well as data about the
corresponding higher-level APIs in both
[wasm_simd128.h](https://github.com/llvm/llvm-project/blob/main/clang/lib/Headers/wasm_simd128.h)
and [WAV](https://github.com/nemequ/wav); we are open to adding data
for APIs in other languages (*e.g.*, Rust).

The lowering/ directory then uses that information to generate more
data on which instructions are expected to be used on various
architectures to implement the WASM SIMD instructions, as well as
performance data (number of uOps and latency).  Note that this data
should not currently be considered accurate; the lowering/ directory
has more  information, but basically many of the functions have not
yet been optimized and engines such as V8 are likely to contain *much*
better implementations.

For information on how to generate the lowering data, please see the
README in the lowering/ directory.

Once you have generated the lowering data, you can generate the final
output using `scripts/generate.py`.  If you provide an argument to that
scrip it will be used as an output file for a minified (no extra
whitespace) JSON dump.  If you do not provide an argument a
non-minified JSON dump of the same data intended to be (relatively
speaking) human-readable will be sent to stdout.

Please note that the format of this data should not be considered
stable (yet?).

## License

The license for the data has not yet been determined.  Currently, copy
some information from the [WebAssembly 128-bit packed SIMD Extension
proposal](https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md),
which means it would be subject to the [W3C
license](https://github.com/WebAssembly/simd/blob/main/document/core/LICENSE),
but I'm leaning towards re-writing those sections anyways.  Not only
would this allow us to use a more permissive license (perhaps even
a public domain dedication), it would allow more flexibility in how the
content is organized.
