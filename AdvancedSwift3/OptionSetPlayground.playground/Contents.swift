//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct ShippingOptions: OptionSet {
    let rawValue: Int8
    
    static let nextDay = ShippingOptions(rawValue: 1 << 0)
    static let secondDay = ShippingOptions(rawValue: 1 << 1)
    static let priority = ShippingOptions(rawValue: 1 << 2)
    static let standard = ShippingOptions(rawValue: 1 << 7)
    
    static let express: ShippingOptions = [.nextDay, .secondDay]
    static let all: ShippingOptions = [.nextDay, .secondDay, .priority, .standard]
}

let singleOption: ShippingOptions = .standard
let multiOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
let noOptions: ShippingOptions = []

let purchasePrice = 87.55

var freeOptions: ShippingOptions = []
if purchasePrice > 50 {
    freeOptions.insert(.priority)
    print("what is \(singleOption)")
}

if freeOptions.contains(.priority) {
    print("You've earned free priority shipping")
} else {
    print("Add more to your cart for free priority shipping!")
}

var signedOverflow = Int8.min
let signedOverflow_1 = signedOverflow &- 1
//let signedOverflow_2 = signedOverflow - 1

