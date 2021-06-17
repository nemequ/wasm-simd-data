#include <simde/wasm/simd128.h>

v128_t
i16x8_replace_lane(v128_t a, int16_t value) {
  return wasm_i16x8_replace_lane(a, IMMEDIATE, value);
}
