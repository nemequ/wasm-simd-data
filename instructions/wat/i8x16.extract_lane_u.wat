(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i8x16_extract_lane_u (type 0) (param v128) (result i32)
    local.get 0
    i8x16.extract_lane_u 0)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i8x16_extract_lane_u" (func $i8x16_extract_lane_u)))
