//: Playground - noun: a place where people can play

import UIKit

var str = "Hello,"
var cost = 60
var anotherCost: Int = 60
var pi: Double = 1.0 / 3.0
var piFloat32: Float32 = Float32(pi)
var piFloat64: Float64 = Float64(pi)
var emoji: Character = "😆"

str + String(piFloat32)

var possibleString: String? = "An optional string"
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwarpped optional string."
let implicitString: String = assumedString

// 这么判断 optional 的值
if possibleString != nil {
    print("possibleString has value")
}


if let name = possibleString {
    print("assumed")
}

let defaultColorName = "red"
var userDefinedColorName: String? //默认值为 nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(userDefinedColorName)


var name: String? = "mac"
print(name!)
if let nameValue = name {
    print(nameValue)
}


