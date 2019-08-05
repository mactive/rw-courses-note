//: [Previous](@previous)
// 有点像原型链
import Foundation
import CoreGraphics

// precedence and associativity
// 优先和结合
extension CGPoint {
    // 普通运算符
    static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    // 前置运算符翻转
    static prefix func -(input: CGPoint) -> CGPoint {
        return CGPoint(x: -input.x, y: -input.y)
    }
}

// New Precedence Group
precedencegroup ExponentiationPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: none // you must use parenthesis
}

//: [Next](@next)
