#include <wasm_simd128.h>

double
f64x2_extract_lane(v128_t a)
{
  return wasm_f64x2_extract_lane(a, IMMEDIATE);
}
