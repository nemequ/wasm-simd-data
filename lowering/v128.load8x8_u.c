#include <simde/wasm/simd128.h>

v128_t
u16x8_load8x8(const void * memarg) {
  return wasm_u16x8_load8x8(memarg);
}
