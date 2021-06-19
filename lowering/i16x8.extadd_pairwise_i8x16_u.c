#include <simde/wasm/simd128.h>

v128_t
u16x8_extadd_pairwise_u8x16(v128_t a) {
  return wasm_u16x8_extadd_pairwise_u8x16(a);
}
