#include <wasm_simd128.h>

v128_t
u32x4_extmul_low_u16x8(v128_t a, v128_t b)
{
  return wasm_u32x4_extmul_low_u16x8(a, b);
}
