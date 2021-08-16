(module
  (type (;0;) (func (param v128 f32) (result v128)))
  (func $f32x4_replace_lane (type 0) (param v128 f32) (result v128)
    local.get 0
    local.get 1
    f32x4.replace_lane 0)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "f32x4_replace_lane" (func $f32x4_replace_lane)))
