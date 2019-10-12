//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let number = -10
let numberDescription: String

switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0 :
    numberDescription = "Nagative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No Description"
}

//: [Next](@next)
