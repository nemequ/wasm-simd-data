(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $f32x4_gt (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    f32x4.gt)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f32x4_gt" (func $f32x4_gt)))