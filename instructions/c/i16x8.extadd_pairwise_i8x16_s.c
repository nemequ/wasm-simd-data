#include <wasm_simd128.h>

v128_t
i16x8_extadd_pairwise_i8x16_s(v128_t a)
{
  return wasm_i16x8_extadd_pairwise_i8x16(a);
}
