#include <wasm_simd128.h>

v128_t
v128_xor(v128_t a, v128_t b)
{
  return wasm_v128_xor(a, b);
}
