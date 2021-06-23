#include <simde/wasm/simd128.h>

v128_t
i32x4_trunc_sat_f64x2_zero(v128_t a) {
  return wasm_i32x4_trunc_sat_f64x2_zero(a);
}
