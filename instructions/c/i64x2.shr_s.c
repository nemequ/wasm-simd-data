#include <wasm_simd128.h>

v128_t
i64x2_shr_s(v128_t a, int32_t b)
{
  return wasm_i64x2_shr(a, b);
}
