(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i32x4_extract_lane (type 0) (param v128) (result i32)
    local.get 0
    i32x4.extract_lane 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_extract_lane" (func $i32x4_extract_lane)))
