#include <simde/wasm/simd128.h>

void
v128_store(void * memarg, v128_t data) {
  wasm_v128_store(memarg, data);
}
