(module
  (type (;0;) (func (param i32) (result v128)))
  (func $v128_load16x4_s (type 0) (param i32) (result v128)
    local.get 0
    v128.load16x4_s align=1)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "v128_load16x4_s" (func $v128_load16x4_s)))
