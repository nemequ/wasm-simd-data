#include <simde/wasm/simd128.h>

v128_t
f64x2_promote_low_f32x4(v128_t a) {
  return wasm_f64x2_promote_low_f32x4(a);
}
