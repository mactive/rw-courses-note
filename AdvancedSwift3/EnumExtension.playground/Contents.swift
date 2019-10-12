//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum CSSColor {
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}

extension CSSColor {
    enum ColorName: String {
        case black, silver, gray, red,green, blue
    }
}

let color1 = CSSColor.named(.black)

enum Math {
    static let phi = 1.6183278123
}

Math.phi