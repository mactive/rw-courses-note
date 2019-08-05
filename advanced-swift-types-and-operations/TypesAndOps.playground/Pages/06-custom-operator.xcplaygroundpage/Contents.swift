//: [Previous](@previous)

import Foundation
import CoreGraphics

public struct CGAngle {
    public var radians: CGFloat
    public init(radians:CGFloat) {
        self.radians = radians
    }
}

extension CGAngle {
    init(degress: CGFloat) {
        radians = degress / 180.0 * CGFloat.pi
    }
    @inlinable public var degress: CGFloat {
        get {
            return radians / CGFloat.pi * 180.0
        }
        set {
            radians = newValue / 180.0 * CGFloat.pi
        }
    }
}


extension CGAngle: Comparable {
    
    // 重新标准化, 会修改值, 所以添加 mutating
    public mutating func normalize() {
        radians = normalized().radians
    }
    
    private func normalized() -> CGAngle {
        return CGAngle(radians: atan2(sin(radians), cos(radians)))
    }
    
    // static func 可以禁止方法被重写
    public static func ==(lhs: CGAngle, rhs: CGAngle) -> Bool {
        return abs(lhs.normalized().radians - rhs.normalized().radians) < 1e-6
    }
    
    public static func <(lhs: CGAngle, rhs: CGAngle) -> Bool {
        return lhs.normalized().radians < rhs.normalized().radians
    }
}

CGAngle(radians: 0) == CGAngle(degress: 360)

var angle1 = CGAngle(degress: 90)
angle1.normalize()
angle1.radians

var angle2 = CGAngle(radians: CGFloat.pi / 2)
angle2.radians


angle1 == angle2



//: [Next](@next)
