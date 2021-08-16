(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $f64x2_mul (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    f64x2.mul)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "f64x2_mul" (func $f64x2_mul)))
