#include <simde/wasm/simd128.h>

int
i16x8_extract_lane_s(v128_t a) {
  return wasm_i16x8_extract_lane(a, IMMEDIATE);
}
