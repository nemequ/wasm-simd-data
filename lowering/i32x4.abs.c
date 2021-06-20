#include <simde/wasm/simd128.h>

v128_t
i32x4_abs(v128_t a) {
  return wasm_i32x4_abs(a);
}
