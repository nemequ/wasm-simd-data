(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i8x16_ne (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i8x16.ne)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i8x16_ne" (func $i8x16_ne)))
