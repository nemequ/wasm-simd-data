#include <simde/wasm/simd128.h>

v128_t
u32x4_shr(v128_t a, int32_t b) {
  return wasm_u32x4_shr(a, b);
}
