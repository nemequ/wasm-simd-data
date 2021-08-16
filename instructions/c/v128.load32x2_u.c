#include <wasm_simd128.h>

v128_t
u64x2_load32x2(const void *memarg)
{
  return wasm_u64x2_load32x2(memarg);
}
