#include <wasm_simd128.h>

v128_t
i64x2_extend_low_i32x4_s(v128_t a)
{
  return wasm_i64x2_extend_low_i32x4(a);
}
