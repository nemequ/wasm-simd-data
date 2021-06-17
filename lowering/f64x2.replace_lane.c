#include <simde/wasm/simd128.h>

v128_t
f64x2_replace_lane(v128_t a, double value) {
  return wasm_f64x2_replace_lane(a, IMMEDIATE, value);
}
