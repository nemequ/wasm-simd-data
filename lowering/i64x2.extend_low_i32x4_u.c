#include <simde/wasm/simd128.h>

v128_t
u64x2_extend_low_u32x4(v128_t a) {
  return wasm_u64x2_extend_low_u32x4(a);
}
