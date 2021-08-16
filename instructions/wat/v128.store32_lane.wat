(module
  (type (;0;) (func (param i32 v128)))
  (func $v128_store32_lane (type 0) (param i32 v128)
    local.get 0
    local.get 1
    v128.store8_lane 0)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "v128_store32_lane" (func $v128_store32_lane)))
