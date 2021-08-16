(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i16x8_extend_high_i8x16_u (type 0) (param v128) (result v128)
    local.get 0
    i16x8.extend_high_i8x16_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_extend_high_i8x16_u" (func $i16x8_extend_high_i8x16_u)))
