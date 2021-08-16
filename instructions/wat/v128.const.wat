(module
  (type (;0;) (func (result v128)))
  (func $v128_const (type 0) (result v128)
    v128.const i32x4 0x0000002a 0x00000000 0x000006c1 0x00000000)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_const" (func $v128_const)))
