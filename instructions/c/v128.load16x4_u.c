#include <wasm_simd128.h>

v128_t
v128_load16x4_u(const void *memarg)
{
  return wasm_u32x4_load16x4(memarg);
}
