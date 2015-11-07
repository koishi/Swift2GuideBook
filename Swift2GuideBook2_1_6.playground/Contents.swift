import UIKit

// 2-1-6

// 2.39

let index: Int? = 2
let data: [String] = ["", "北海道", "青森県", "岩手県"]

if let unwrapindex = index {
  let address = data[unwrapindex]
  print(address)
} else {
  // 値が存在しない
  print("error")
}

// 2-1-7

// すべての場所からアクセス可能
public class MyPublicClass
{
}

// 定義しているモジュール内からのみアクセス可能
internal class MyInternalClass
{
}

// 定義しているファイル内からのみアクセス可能
private class MyPrivateClass
{
}

public var myPublicValue = 0

internal let myInternalValue = 0

private func myPrivateFunction() {}

// 2-1-8 コンソール出力

// 文字列リテラルに変数埋め込み
let message = "Hello"
print("\(message) Swift.")

class Hoge: CustomStringConvertible {
  var description: String {
    return "This Class is Hoge"
  }
}
let hoge = Hoge()
print(hoge)

class Hoge2: NSObject {
  override var description: String {
    return "This Class is Hoge2"
  }
}
let hoge2 = Hoge2()
print(hoge2)

// 2-1-9 アサーション

let age = 19
assert(age > 0)
assert(age < 30, "未成年")


