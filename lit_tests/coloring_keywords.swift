// RUN: %lit-test-helper -classify-syntax -source-file %s | %FileCheck %s

// REQUIRES: rdar90284916

// CHECK: <kw>return</kw> <id>c</id>.<id>return</id>

class C {
  var `return` = 2
}

func foo(_ c: C) -> Int {
  return c.return
}
