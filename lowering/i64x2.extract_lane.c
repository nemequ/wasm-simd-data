#include <simde/wasm/simd128.h>

int64_t
i64x2_extract_lane(v128_t a) {
  return wasm_i64x2_extract_lane(a, 1);
}
