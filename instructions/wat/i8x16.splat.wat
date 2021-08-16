(module
  (type (;0;) (func (param i32) (result v128)))
  (func $i8x16_splat (type 0) (param i32) (result v128)
    local.get 0
    i8x16.splat)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i8x16_splat" (func $i8x16_splat)))
