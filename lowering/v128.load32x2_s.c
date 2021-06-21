#include <simde/wasm/simd128.h>

v128_t
i64x2_load32x2(const void * memarg) {
  return wasm_i64x2_load32x2(memarg);
}
