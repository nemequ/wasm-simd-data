#include <simde/wasm/simd128.h>

v128_t
f64x2_splat(double x) {
  return wasm_f64x2_splat(x);
}
