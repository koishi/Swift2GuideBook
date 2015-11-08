import UIKit

class SampleClass
{
  // 3-2-1 関数の型
  class func func316()
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
  
  // クロージャによる変数キャプチャ例
  class func func317()
  {
    var f1: Int -> Int
    repeat {
      
      var captured = 10

      f1 = {(f1: Int) -> Int in
        return captured++ * f1
      }
    
    } while false

    f1(5)
    f1(6)
  }

  class func func319()
  {
    let ff_int = {(i: Int, f:(Int -> Int)) -> Int in
      return f(i)
    }
    
    let sq_int = {(i: Int) -> Int in
      return i * i
    }

    ff_int(5, sq_int)
    
  }
  
}

SampleClass.func316()

SampleClass.func317()

SampleClass.func319()