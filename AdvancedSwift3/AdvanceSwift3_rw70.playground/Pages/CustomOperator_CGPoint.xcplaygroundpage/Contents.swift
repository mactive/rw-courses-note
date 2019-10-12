//: Playground - noun: a place where people can play

import UIKit

import UIKit

extension CGPoint {
    static func *(lhs: CGPoint, rhs: CGAffineTransform) -> CGPoint {
        return lhs.applying(rhs)
    }
}

extension CGAffineTransform {
    static func *(lhs: CGAffineTransform, rhs:CGAffineTransform) -> CGAffineTransform {
        return lhs.concatenating(rhs)
    }
}

func *(points: [CGPoint], transform: CGAffineTransform) -> [CGPoint] {
    return points.map{ $0 * transform}
}


import PlaygroundSupport

extension UIBezierPath {
    convenience init(from points:[CGPoint]) {
        self.init()
        guard let first = points.first else {
            return
        }
        move(to: first)
        for point in points.dropFirst() {
            addLine(to: point)
        }
        close()
    }
}

let points: [CGPoint] = [
    CGPoint(x: -1, y: -1),
    CGPoint(x: 1, y: -1),
    CGPoint(x: 1, y: 1),
    CGPoint(x: 0, y: 2),
    CGPoint(x: -1, y: 1)
]

// 放大 30倍
let modelToScale = CGAffineTransform(scaleX: 30, y: 30)
// 旋转 180/8 degree
let scaleToRotated = CGAffineTransform(rotationAngle: .pi/8)
// 向左向右移动各100
let rotatedToTranslated = CGAffineTransform(translationX: 100, y:100)

let scaledRotatedAndTranslated = points * modelToScale * scaleToRotated * rotatedToTranslated

let path = UIBezierPath(from: scaledRotatedAndTranslated)
let layer = CAShapeLayer()
layer.path = path.cgPath
layer.strokeColor = UIColor.cyan.cgColor

let view = UIView(frame: CGRect(x:0, y:0, width: 200, height:200))
view.layer.addSublayer(layer)
PlaygroundPage.current.liveView = view




