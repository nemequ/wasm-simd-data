#include <simde/wasm/simd128.h>

v128_t
u64x2_shr(v128_t a, int32_t b) {
  return wasm_u64x2_shr(a, b);
}
