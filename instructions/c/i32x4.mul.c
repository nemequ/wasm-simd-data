#include <wasm_simd128.h>

v128_t
i32x4_mul(v128_t a, v128_t b)
{
  return wasm_i32x4_mul(a, b);
}
