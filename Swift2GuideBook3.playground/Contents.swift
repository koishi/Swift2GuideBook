import UIKit

class SampleClass
{
  // 3-2-1 関数の型
  class func func321()
  {

    // f1を変数test_f1に代入
    func f1(i1: Int, i2: Int) -> Int
    {
      return i1 * i2
    }
    var test_f1: (Int, Int) -> Int = f1

    print(test_f1(1,2))
    
    // f1を変数test_f1に代入
    func f2(i1: Int) -> Void
    {
      print("i1 is \(i1)")
    }
    let test_f2: Int -> Void = f2
    test_f2(1000)
    
  }
}

SampleClass.func321()
