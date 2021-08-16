#include <wasm_simd128.h>

v128_t
u32x4_load16x4(const void *memarg)
{
  return wasm_u32x4_load16x4(memarg);
}
