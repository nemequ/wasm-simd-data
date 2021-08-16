#include <wasm_simd128.h>

#pragma clang diagnostic ignored "-Wvector-conversion"

int64_t
i64x2_extract_lane(v128_t a)
{
  return wasm_i64x2_extract_lane(a, IMMEDIATE);
}
