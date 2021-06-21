#include <simde/wasm/simd128.h>

int32_t
i64x2_bitmask(v128_t a) {
  return wasm_i64x2_bitmask(a);
}
