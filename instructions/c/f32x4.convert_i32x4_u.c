#include <wasm_simd128.h>

v128_t
f32x4_convert_i32x4_u(v128_t a)
{
  return wasm_f32x4_convert_u32x4(a);
}
