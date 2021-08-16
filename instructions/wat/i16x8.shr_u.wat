(module
  (type (;0;) (func (param v128 i32) (result v128)))
  (func $i16x8_shr_u (type 0) (param v128 i32) (result v128)
    local.get 0
    local.get 1
    i16x8.shr_u)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i16x8_shr_u" (func $i16x8_shr_u)))
