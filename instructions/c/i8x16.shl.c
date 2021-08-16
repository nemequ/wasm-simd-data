#include <wasm_simd128.h>

v128_t
i8x16_shl(v128_t a, int32_t b)
{
  return wasm_i8x16_shl(a, b);
}
