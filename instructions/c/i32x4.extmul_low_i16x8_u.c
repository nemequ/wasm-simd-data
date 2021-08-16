#include <wasm_simd128.h>

v128_t
i32x4_extmul_low_i16x8_u(v128_t a, v128_t b)
{
  return wasm_u32x4_extmul_low_u16x8(a, b);
}
