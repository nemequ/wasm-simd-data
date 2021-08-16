(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i16x8_extend_low_i8x16_u (type 0) (param v128) (result v128)
    local.get 0
    i16x8.extend_low_i8x16_u)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i16x8_extend_low_i8x16_u" (func $i16x8_extend_low_i8x16_u)))
