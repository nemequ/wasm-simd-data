#include <simde/wasm/simd128.h>

v128_t
f64x2_convert_low_i32x4(v128_t a) {
  return wasm_f64x2_convert_low_i32x4(a);
}
