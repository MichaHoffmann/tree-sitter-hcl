// comment
# comment
/*
    comment
*/

resource_1 "strlit1" "strlit2" {
  attr1  = "val1"
  tupl1  = [ 1, 2, 3.4, "foo" ]
  tupl2  = []
  obj1   = { foo = "baz" }
  null1  = null
  bool1  = true
  bool2  = false
  splat1 = tuple.*.foo.bar[0]
  splat2 = tuple[*].foo.bar[0]
  for1   = { for i, v in ["a", "a", "b"] : v => i... }
  for2   = [ for k, v in local.list : "${k}-${v}" ]
  for3   = { for k, v in local.map : k => v }
  for4   = [ for k in local.list : k ]
  for5   = { for i in local.list : i => i }
  for6   = [ for i in local.list : i if i < 3 ]
  func1  = is_number("123")
  cond1  = pred() ? 1 : "foobar"
  esc1   = "\" \t \UFF11FF22 \uFFFF \n"

  nested_resource_1 {
    attr1 = 2
    attr2 = 2.112
    attr3 = 2.112e-12
    attr4 = 2.112e+12
    attr5 = 2.112E+12
    attr6 = 2.112E-12
  }
}