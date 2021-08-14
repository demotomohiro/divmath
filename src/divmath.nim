proc robustCeilDiv*[T: SomeInteger](x, y: T): T {.inline.} =
  ## Ceil division is conceptually defined as `ceil(x / y)`.
  ##
  ## This is different from the `system.div` operator in stdlib,
  ## which is defined as `trunc(x / y)`.
  ## That is, `div` rounds towards `0` and `ceilDiv` rounds up.
  runnableExamples:
    assert robustCeilDiv( 12,  3) ==  4
    assert robustCeilDiv( 13,  3) ==  5
    assert robustCeilDiv(-13,  3) == -4
    assert robustCeilDiv( 13, -3) == -4
    assert robustCeilDiv(-13, -3) ==  5

  result = x div y
  if not (x < 0 xor y < 0) and x mod y != 0:
    inc result
