//: Playground - noun: a place where people can play

import UIKit

typealias UnsignedInt16 = UInt16
typealias SignedInt16 = Int16
SignedInt16.min
SignedInt16.max
UnsignedInt16.min
UnsignedInt16.max

var integer: Int = 100
var decimal: Double = 12.5
var float: Float = 12.01
integer = Int(decimal)

var pi = String(Double.pi)


let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

let actualllyDouble = 3 as Double



protocol Multiable {
    func *(lhs: Self, rhs: Self) -> Self
}

func MultiplyTwoValue<T: Multiable>(a:T, b:T) -> T {
    let tempValue: T
    tempValue = a * b
    return tempValue
}

extension Int: Multiable {}
extension Double: Multiable {}


MultiplyTwoValue(a:10, b:2)
MultiplyTwoValue(a: 3.3, b: 4.3)

/**
 * a 决定了 T 是 Int, 但是系统检测 b不是 Int
 * 所以报错了
 */
MultiplyTwoValue(a: 3.1, b: 4.3)

//: Concatenation
var message = "Hello" + " my name is "
let name = "mactive"
message += name

let exclamationMark: Character = "🐱"
let dog = "🐶"
print("Character count: \(dog.characters.count)")
print("Character unicode count \(dog.unicodeScalars.count)")
print("Character utf8 count \(dog.utf8.count)")

message += String(exclamationMark)
message += dog
print(message)
