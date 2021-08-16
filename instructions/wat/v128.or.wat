(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $v128_or (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    v128.or)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "v128_or" (func $v128_or)))
