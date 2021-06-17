#include <simde/wasm/simd128.h>

v128_t
i8x16_replace_lane(v128_t a, int8_t value) {
  return wasm_i8x16_replace_lane(a, IMMEDIATE, value);
}
