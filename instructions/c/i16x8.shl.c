#include <wasm_simd128.h>

v128_t
i16x8_shl(v128_t a, int32_t b)
{
  return wasm_i16x8_shl(a, b);
}
