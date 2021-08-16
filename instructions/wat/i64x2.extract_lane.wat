(module
  (type (;0;) (func (param v128) (result i64)))
  (func $i64x2_extract_lane (type 0) (param v128) (result i64)
    local.get 0
    i64x2.extract_lane 0)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i64x2_extract_lane" (func $i64x2_extract_lane)))
