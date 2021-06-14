#include <simde/wasm/simd128.h>

unsigned int
i16x8_extract_lane_u(v128_t a) {
  return wasm_u16x8_extract_lane(a, 1);
}
