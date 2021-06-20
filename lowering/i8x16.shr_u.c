#include <simde/wasm/simd128.h>

v128_t
u8x16_shr(v128_t a, int32_t b) {
  return wasm_u8x16_shr(a, b);
}
