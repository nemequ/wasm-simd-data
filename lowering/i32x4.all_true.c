#include <simde/wasm/simd128.h>

_Bool
i32x4_all_true(v128_t a) {
  return wasm_i32x4_all_true(a);
}
