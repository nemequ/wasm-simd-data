#include <wasm_simd128.h>

v128_t
v128_load8x8_u(const void *memarg)
{
  return wasm_u16x8_load8x8(memarg);
}
