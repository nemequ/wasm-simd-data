#include <wasm_simd128.h>

v128_t
v128_load32x2_u(const void *memarg)
{
  return wasm_u64x2_load32x2(memarg);
}
