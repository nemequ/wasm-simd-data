(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f32x4_sqrt (type 0) (param v128) (result v128)
    local.get 0
    f32x4.sqrt)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f32x4_sqrt" (func $f32x4_sqrt)))
