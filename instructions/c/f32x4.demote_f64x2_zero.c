#include <wasm_simd128.h>

v128_t
f32x4_demote_f64x2_zero(v128_t a)
{
  return wasm_f32x4_demote_f64x2_zero(a);
}
