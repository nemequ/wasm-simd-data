(module
  (type (;0;) (func (param v128) (result i32)))
  (func $v128_any_true (type 0) (param v128) (result i32)
    local.get 0
    v128.any_true)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "v128_any_true" (func $v128_any_true)))
