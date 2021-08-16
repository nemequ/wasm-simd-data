#include <wasm_simd128.h>

v128_t
v128_load32_zero(const void *memarg)
{
  return wasm_v128_load32_zero(memarg);
}
