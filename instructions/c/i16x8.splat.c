#include <wasm_simd128.h>

v128_t
i16x8_splat(int16_t x)
{
  return wasm_i16x8_splat(x);
}
