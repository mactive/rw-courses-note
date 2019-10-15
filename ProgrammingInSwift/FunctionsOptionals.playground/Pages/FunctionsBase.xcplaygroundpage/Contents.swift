//: [Previous](@previous)

import Foundation

// function with default
func printMultipleOf(number: Int, multiplier: Int = 1) {
    print("\(number) * \(multiplier) = \(number * multiplier)")
}

printMultipleOf(number: 4, multiplier: 2)
printMultipleOf(number: 5)

func printDevideOf(number: Int, devider: Int = 1) {
    print("\(number) / \(devider) = \(number / devider)")
}

// function with default external name
func multiply(_ factor1: Int, _ factor2: Int) -> Int {
    printMultipleOf(number: factor1, multiplier: factor2)
    return factor1 * factor2
}

let result = multiply(7, 3)

// function return a tuple and has a defined external name
func multiplyAndDevide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    printMultipleOf(number: number, multiplier: factor)
    printDevideOf(number: number, devider: factor)
    return (number * factor, number / factor)
}

let resultTuple = multiplyAndDevide(8, by: 2)
let (theProduct, quotient) = resultTuple
theProduct
quotient

//: [Next](@next)
