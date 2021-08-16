#include <wasm_simd128.h>

v128_t
v128_load16_splat(const void *memarg)
{
  return wasm_v128_load16_splat(memarg);
}
