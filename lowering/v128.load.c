#include <simde/wasm/simd128.h>

v128_t
v128_load(const void * memarg) {
  return wasm_v128_load(memarg);
}
