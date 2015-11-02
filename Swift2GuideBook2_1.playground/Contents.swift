import UIKit

// 2.1

var value = 3
let flag = true; print(value)
if flag {
  print("true")
}

// 2.2

// コメント

// 1行コメント

/* 複数行
コメント */

/* 最初のコメント
/* 入れ子のコメント */
最後のコメント */

// 2.3

class Sample: NSObject
{
  var baseCount: Int = 0
  func sum(text: String)
  {
  }
}

let sample = Sample()
sample.baseCount = 100
sample.sum("arg")
