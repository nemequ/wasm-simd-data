(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i16x8_extract_lane_u (type 0) (param v128) (result i32)
    local.get 0
    i16x8.extract_lane_u 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_extract_lane_u" (func $i16x8_extract_lane_u)))
