#include <simde/wasm/simd128.h>

int32_t
i16x8_bitmask(v128_t a) {
  return wasm_i16x8_bitmask(a);
}
