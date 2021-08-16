#include <wasm_simd128.h>

v128_t
v128_load32x2_s(const void *memarg)
{
  return wasm_i64x2_load32x2(memarg);
}
