#include <wasm_simd128.h>

v128_t
i64x2_extmul_low_i32x4_u(v128_t a, v128_t b)
{
  return wasm_u64x2_extmul_low_u32x4(a, b);
}