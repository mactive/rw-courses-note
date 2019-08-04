//: [Previous](@previous)

import Foundation
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
import struct CoreGraphics.CGSize
import struct CoreGraphics.CGRect

struct CGAngle {
    var radians: CGFloat
}

extension CGAngle {
    @inlinable init(degrees: CGFloat) {
        radians = degrees / 180.0 * CGFloat.pi
    }
    
    @inlinable var degrees: CGFloat {
        get {
            return radians / CGFloat.pi * 180.0
        }
        set {
            radians = newValue / 180.0
        }
    }
}

extension CGAngle: CustomStringConvertible {
    var description: String {
        return String(format: "%0.2f.C", degrees)
    }
}

let angle = CGAngle(radians: .pi)
let angle2 = CGAngle(degrees: 90)

//: enum 写法
// 这样不同的形状不同的入参 就比各种init方法更好
enum ShapeKind {
    case circle(center: CGPoint, radius: CGFloat)
    case square(origin: CGPoint, size: CGFloat)
    case rotatedSquare(origin: CGPoint, size: CGFloat, angle: CGAngle)
    case rect(CGRect)
    case rotatedRect(CGRect, CGAngle)
    case ellipse(CGRect)
    case rotatedEllipse(CGRect, CGAngle)
}

let circleItem = ShapeKind.circle(center: CGPoint.zero, radius: 10)
let rotatedSquare = ShapeKind.rotatedSquare(origin: .zero,
                                            size: 19.21,
                                            angle: CGAngle(degrees: 90))

//: 传统写法
// struct

struct Shape {
    enum `Type` {
        case circle
        case square
        case rotatedSquare
        case rect
        case rotatedRect
        case ellipse
        case rotetedEllipse
    }
    
    var shareType: Type
    var rect: CGRect
    var angle: CGFloat
}

let center = CGPoint.zero
let radius: CGFloat = 10
let circle = Shape(shareType: .circle,
                   rect: CGRect(x: center.x - radius,
                                y: center.y - radius,
                                width: radius * 2,
                                height: radius * 2),
                   angle: 0)

circle.angle

//: [Next](@next)
