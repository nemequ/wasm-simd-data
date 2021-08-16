#include <wasm_simd128.h>

int i32x4_extract_lane(v128_t a)
{
  return wasm_i32x4_extract_lane(a, IMMEDIATE);
}
