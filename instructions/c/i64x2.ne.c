#include <wasm_simd128.h>

v128_t
i64x2_ne(v128_t a, v128_t b)
{
  return wasm_i64x2_ne(a, b);
}
