import divmath

block:
  doAssert robustCeilDiv(8, 3) == 3
  doAssert robustCeilDiv(8, -3) == -2
  doAssert robustCeilDiv(-8, 3) == -2
  doAssert robustCeilDiv(-8, -3) == 3
  doAssert robustCeilDiv(8, 4) == 2
  doAssert robustCeilDiv(8, -4) == -2
  doAssert robustCeilDiv(-8, 4) == -2
  doAssert robustCeilDiv(-8, -4) == 2
  doAssert robustCeilDiv(11,  3) ==  4
  doAssert robustCeilDiv(12,  3) ==  4
  doAssert robustCeilDiv(13,  3) ==  5
  doAssert robustCeilDiv(low(int), low(int)) == 1
  doAssert robustCeilDiv(low(int) + 1, low(int)) == 1
  doAssert robustCeilDiv(low(int) + 2, low(int)) == 1
  doAssert robustCeilDiv(-2, low(int)) == 1
  doAssert robustCeilDiv(-1, low(int)) == 1
  doAssert robustCeilDiv( 0, low(int)) == 0
  doAssert robustCeilDiv( 1, low(int)) == 0
  doAssert robustCeilDiv( 2, low(int)) == 0
  doAssert robustCeilDiv(high(int), low(int)) == 0
  doAssert robustCeilDiv(low(int), low(int) + 1) == 2
  doAssert robustCeilDiv(low(int) + 1, low(int) + 1) == 1
  doAssert robustCeilDiv(low(int) + 2, low(int) + 1) == 1
  doAssert robustCeilDiv(-2, low(int) + 1) == 1
  doAssert robustCeilDiv(-1, low(int) + 1) == 1
  doAssert robustCeilDiv( 0, low(int) + 1) == 0
  doAssert robustCeilDiv( 1, low(int) + 1) == 0
  doAssert robustCeilDiv( 2, low(int) + 1) == 0
  doAssert robustCeilDiv(high(int), low(int) + 1) == -1
  doAssert robustCeilDiv(high(int) - 1, low(int) + 1) == 0
  doAssert robustCeilDiv(low(int),     high(int) - 1) == -1
  doAssert robustCeilDiv(low(int) + 1, high(int) - 1) == -1
  doAssert robustCeilDiv(low(int) + 2, high(int) - 1) == -1
  doAssert robustCeilDiv(low(int) + 3, high(int) - 1) == 0
  doAssert robustCeilDiv(-1, high(int) - 1) == 0
  doAssert robustCeilDiv( 0, high(int) - 1) == 0
  doAssert robustCeilDiv( 1, high(int) - 1) == 1
  doAssert robustCeilDiv(high(int) - 2, high(int) - 1) == 1
  doAssert robustCeilDiv(high(int) - 1, high(int) - 1) == 1
  doAssert robustCeilDiv(high(int)    , high(int) - 1) == 2
  doAssert robustCeilDiv(low(int), high(int)) == -1
  doAssert robustCeilDiv(low(int) + 1, high(int)) == -1
  doAssert robustCeilDiv(low(int) + 2, high(int)) == 0
  doAssert robustCeilDiv(-1, high(int)) == 0
  doAssert robustCeilDiv(0, high(int)) == 0
  doAssert robustCeilDiv(1, high(int)) == 1
  doAssert robustCeilDiv(high(int) - 1, high(int)) == 1
  doAssert robustCeilDiv(high(int), high(int)) == 1
