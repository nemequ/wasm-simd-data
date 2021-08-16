#include <wasm_simd128.h>

v128_t
i16x8_min_s(v128_t a, v128_t b)
{
  return wasm_i16x8_min(a, b);
}
