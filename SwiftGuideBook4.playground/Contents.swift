//: Playground - noun: a place where people can play

import UIKit

// nilが許可されない
//let str:String

// nilが許可される
let optionalString: String?

// Optional型への自動変換
var optionalNumber:Int? = 100
var number:Int = 200
optionalNumber = number

// 逆の変換は出来無い
//number = optionalNumber

// 4-2-4

// if文での手動アンラップ

class Sample {
  
  class func func424()
  {
    let string: String = "123"
    let optionalNumber = Int(string)
    
    if optionalNumber != nil {
      print("optionalNumber has Value \(optionalNumber!)")
      print("optionalNumber has Value \(optionalNumber)")
    } else {
      print("optionalNumber is nil")
    }
  }

  static func test()
  {
    print("1")
  }
  
}

// クラスメソッド呼び出し
Sample.func424()
Sample.test()

// インスタンスメソッドからの呼び出し
//let sample = Sample()
//sample.dynamicType.func424()


// 4-2-5

class Sample425
{

  // Optional Binding
  static func func425()
  {
    let str = "100"
    if let number = Int(str) {
      print("test \(number)")
    }
    
  }

  // Optionalパターンマッチ
  static func func426()
  {
    let str = "123"
    if case let price? = Int(str) {
      print(price)
    }
  }
  
  // ??演算子
  static func func427()
  {
    let str = "100a"
    let number:Int = Int(str) ?? 0
    print(number)
  }
  
}

Sample425.func425()
Sample425.func426()
Sample425.func427()


