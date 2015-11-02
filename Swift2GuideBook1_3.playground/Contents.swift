//1-3-1

import UIKit

// 1.1
class SampleClass
{
  deinit {
    print("deinit")
  }
}

var sample: SampleClass? = SampleClass()

sample = nil // deinitが呼ばれる

//1.2

for i in 0...10 {
  i * i
}
