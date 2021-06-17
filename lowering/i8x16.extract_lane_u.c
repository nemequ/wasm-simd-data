#include <simde/wasm/simd128.h>

unsigned int
i8x16_extract_lane_u(v128_t a) {
  return wasm_u8x16_extract_lane(a, IMMEDIATE);
}
