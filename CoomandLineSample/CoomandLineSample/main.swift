//
//  main.swift
//  CoomandLineSample
//
//  Created by bs on 2015/11/03.
//  Copyright © 2015年 bs. All rights reserved.
//

import Foundation

// MARK: -
// MARK: 2.23

// 変数
var myMutableVal = 3

// 定数
let myImutableVal = 10

// MARK: -
// MARK: 2.24

var x = 4, y = 6, z = 8
print(x,y,z)

// MARK: -
// MARK: 2.25

myMutableVal = 300
//myImutableVal = 100

// MARK: -
// MARK: 2.26

var message = "hello"
print(message)
//message = 256

// MARK: -
// MARK: 2.28 型の指定

var myMessage: String = ""
print(myMessage)

var nilMessage: String?
print(nilMessage)

// MARK: -
// MARK: 2.29

let isProgrammer: Bool = true
let openWindow = false //型推論

// MARK: -
// MARK: 2.30
let name: String = "test"
let myName = "Oishi"

// MARK: -
// MARK: 2.31

let a = 10
//let b = a * 10.5 //エラーになる

// MARK: -
// MARK: 2.32

let xa = 10.5
let xb = xa * 10

// MARK: -
// MARK: 2-1-4 型エイリアス

typealias pagenumber = UInt16
//var pageName:pagenumber = "文字列は入らない"
var pageIndex:pagenumber = 10

// MARK: -
// MARK: 2-1-5 タプル

let httpStatus = (200, "成功")
print(httpStatus)

// 名称でアクセス
let prefecture:(code: Int, text: String) = (13, "東京")
let code = prefecture.code
let text = prefecture.text
print(code,text)

// インデックスでアクセス
print(prefecture.0,prefecture.1)

// タプルの分解
let (_,textValue) = prefecture
print(textValue)
