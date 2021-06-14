#include <simde/wasm/simd128.h>

int
i8x16_extract_lane_s(v128_t a) {
  return wasm_i8x16_extract_lane(a, 1);
}
