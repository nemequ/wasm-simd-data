(module
  (type (;0;) (func (param i64) (result v128)))
  (func $i64x2_splat (type 0) (param i64) (result v128)
    local.get 0
    i64x2.splat)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i64x2_splat" (func $i64x2_splat)))
