(module
  (type (;0;) (func (result v128)))
  (func $v128_const (type 0) (result v128)
    i64.const 42
    i64x2.splat
    i64.const 1729
    i64x2.replace_lane 1)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "v128_const" (func $v128_const)))
