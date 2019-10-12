//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: color enum

enum ColorName: String {
    case red
    case black
    case yellow
    case teal
    case aqua
}

enum CSSColor {
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}

//: draw struct and protocol

protocol DrawingContext {
    func draw(circle: Circle)
    func draw(rectangle: Rectangle)

}

protocol Drawable {
    func draw(context: DrawingContext)
}


struct Circle: Drawable {
    var strokeWidth = 5
    var strokeCOlor = CSSColor.named(.red)
    var fillColor = CSSColor.named(.yellow)
    var center = (x: 80.0, y: 160.0)
    var radius = 60.0
    
    func draw(context: DrawingContext) {
        context.draw(circle: self)
    }
}

struct Rectangle: Drawable {
    var strokeWidth = 5
    var strokeColor = CSSColor.named(.teal)
    var fillColor = CSSColor.named(.red)
    func draw(context: DrawingContext) {
        context.draw(rectangle: self)
    }
}

