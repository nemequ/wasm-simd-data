(module
  (type (;0;) (func (param i32) (result v128)))
  (func $i16x8_splat (type 0) (param i32) (result v128)
    local.get 0
    i16x8.splat)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_splat" (func $i16x8_splat)))
