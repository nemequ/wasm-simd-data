#include <wasm_simd128.h>

v128_t
u32x4_extadd_pairwise_u16x8(v128_t a)
{
  return wasm_u32x4_extadd_pairwise_u16x8(a);
}
