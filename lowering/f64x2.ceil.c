#include <simde/wasm/simd128.h>

v128_t
f64x2_ceil(v128_t a) {
  return wasm_f64x2_ceil(a);
}
