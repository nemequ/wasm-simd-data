(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $f32x4_max (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    f32x4.max)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "f32x4_max" (func $f32x4_max)))
