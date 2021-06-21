#include <simde/wasm/simd128.h>

_Bool
i16x8_all_true(v128_t a) {
  return wasm_i16x8_all_true(a);
}
