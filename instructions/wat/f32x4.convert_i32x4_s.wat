(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f32x4_convert_i32x4_s (type 0) (param v128) (result v128)
    local.get 0
    f32x4.convert_i32x4_s)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f32x4_convert_i32x4_s" (func $f32x4_convert_i32x4_s)))
