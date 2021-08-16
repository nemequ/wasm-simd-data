#include <wasm_simd128.h>

#pragma clang diagnostic ignored "-Wvector-conversion"

v128_t
i64x2_replace_lane(v128_t a, int64_t value)
{
  return wasm_i64x2_replace_lane(a, IMMEDIATE, value);
}
