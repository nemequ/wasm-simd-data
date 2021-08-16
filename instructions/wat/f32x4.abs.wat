(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f32x4_abs (type 0) (param v128) (result v128)
    local.get 0
    f32x4.abs)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "f32x4_abs" (func $f32x4_abs)))
