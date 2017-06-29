//: Playground - noun: a place where people can play

import UIKit
import Foundation

enum ColorName : String {
    case black  = "black"
    case silver = "sliver"
    case gray   = "gray"
    case white  = "white"
    case maroon = "maroon"
    case red    = "red"
}

let fill = ColorName.gray

enum CSSColor {
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}

extension CSSColor: CustomStringConvertible {
    var description: String {
        switch self {
        case .named(let colorName):
            return colorName.rawValue
        case .rgb(let red, let green, let blue):
            return String(format: "#%02X%02X%02X", red, green, blue)
        }
    }
    
    var CSSName: String {
        return "CSSColor"
    }
}

let color1 = CSSColor.named(.red)
let color2 = CSSColor.rgb(0xAA, 0xAA, 0xAA)
print("color1 = \(color1), color2 = \(color2)")
color1.CSSName

extension CSSColor {
    enum ColorName: String {
        case black, silver, gray, white, maroon, red, purple, fuchsia, green, lime, olive, yellow, navy, blue, teal, aqua
    }
}

