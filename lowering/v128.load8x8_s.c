#include <simde/wasm/simd128.h>

v128_t
i16x8_load8x8(const void * memarg) {
  return wasm_i16x8_load8x8(memarg);
}
