#include <wasm_simd128.h>

v128_t
i32x4_trunc_sat_f32x4(v128_t a)
{
  return wasm_i32x4_trunc_sat_f32x4(a);
}
