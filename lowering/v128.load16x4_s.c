#include <simde/wasm/simd128.h>

v128_t
i32x4_load16x4(const void * memarg) {
  return wasm_i32x4_load16x4(memarg);
}
