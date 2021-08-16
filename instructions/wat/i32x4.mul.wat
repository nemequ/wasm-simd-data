(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i32x4_mul (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    i32x4.mul)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i32x4_mul" (func $i32x4_mul)))
