(module
  (type (;0;) (func (param v128) (result f32)))
  (func $f32x4_extract_lane (type 0) (param v128) (result f32)
    local.get 0
    f32x4.extract_lane 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f32x4_extract_lane" (func $f32x4_extract_lane)))
