(module
  (type (;0;) (func (param i32) (result v128)))
  (func $v128_load8_splat (type 0) (param i32) (result v128)
    local.get 0
    v128.load8_splat)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_load8_splat" (func $v128_load8_splat)))
