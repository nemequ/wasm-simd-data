#include <wasm_simd128.h>

v128_t
u64x2_extmul_low_u32x4(v128_t a, v128_t b)
{
  return wasm_u64x2_extmul_low_u32x4(a, b);
}
