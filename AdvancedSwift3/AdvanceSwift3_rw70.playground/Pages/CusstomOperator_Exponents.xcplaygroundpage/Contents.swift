//: [Previous](@previous)

import Foundation

precedencegroup ExponentiationPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: none
}

infix operator **: ExponentiationPrecedence

func **(base: Double, exponent: Double) -> Double {
    return pow(base, exponent)
}

4 ** (2 ** 1)

//: [Next](@next)
