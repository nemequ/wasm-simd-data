#include <wasm_simd128.h>

v128_t
i8x16_swizzle(v128_t a, v128_t s)
{
  return wasm_i8x16_swizzle(a, s);
}
