#include <wasm_simd128.h>

v128_t
i8x16_splat(int8_t x)
{
  return wasm_i8x16_splat(x);
}
