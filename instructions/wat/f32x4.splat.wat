(module
  (type (;0;) (func (param f32) (result v128)))
  (func $f32x4_splat (type 0) (param f32) (result v128)
    local.get 0
    f32x4.splat)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f32x4_splat" (func $f32x4_splat)))
