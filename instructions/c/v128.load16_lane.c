#include <wasm_simd128.h>

v128_t
v128_load16_lane(const void *ptr, v128_t a)
{
  return wasm_v128_load16_lane(ptr, a, IMMEDIATE);
}
