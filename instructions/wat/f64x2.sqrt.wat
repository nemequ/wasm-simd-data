(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f64x2_sqrt (type 0) (param v128) (result v128)
    local.get 0
    f64x2.sqrt)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "f64x2_sqrt" (func $f64x2_sqrt)))
