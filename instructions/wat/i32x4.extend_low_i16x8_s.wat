(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i32x4_extend_low_i16x8_s (type 0) (param v128) (result v128)
    local.get 0
    i32x4.extend_low_i16x8_s)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_extend_low_i16x8_s" (func $i32x4_extend_low_i16x8_s)))
