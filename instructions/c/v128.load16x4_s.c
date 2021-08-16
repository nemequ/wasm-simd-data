#include <wasm_simd128.h>

v128_t
v128_load16x4_s(const void *memarg)
{
  return wasm_i32x4_load16x4(memarg);
}
