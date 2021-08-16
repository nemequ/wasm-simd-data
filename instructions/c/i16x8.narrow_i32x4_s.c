#include <wasm_simd128.h>

v128_t
i16x8_narrow_i32x4(v128_t a, v128_t b)
{
  return wasm_i16x8_narrow_i32x4(a, b);
}
