(module
  (type (;0;) (func (param i32) (result v128)))
  (func $i32x4_splat (type 0) (param i32) (result v128)
    local.get 0
    i32x4.splat)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i32x4_splat" (func $i32x4_splat)))
