#include <simde/wasm/simd128.h>

v128_t
v128_load64_zero(const void * memarg) {
  return wasm_v128_load64_zero(memarg);
}
