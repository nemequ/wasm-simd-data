#include <simde/wasm/simd128.h>

v128_t
i32x4_replace_lane(v128_t a, int32_t value) {
  return wasm_i32x4_replace_lane(a, IMMEDIATE, value);
}
