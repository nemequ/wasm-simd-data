#include <simde/wasm/simd128.h>

int32_t
i32x4_bitmask(v128_t a) {
  return wasm_i32x4_bitmask(a);
}
