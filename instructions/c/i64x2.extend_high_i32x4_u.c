#include <wasm_simd128.h>

v128_t
i64x2_extend_high_i32x4_u(v128_t a)
{
  return wasm_u64x2_extend_high_u32x4(a);
}
