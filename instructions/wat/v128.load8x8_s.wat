(module
  (type (;0;) (func (param i32) (result v128)))
  (func $v128_load8x8_s (type 0) (param i32) (result v128)
    local.get 0
    v128.load8x8_s align=1)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_load8x8_s" (func $v128_load8x8_s)))
