//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Point{
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - size.width / 2
        let originY = center.y - size.height / 2
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let rect1 = Rect()
rect1.origin.x

let rect2 = Rect(center: Point(x:100,y:100), size: Size(width: 100, height: 100))
rect2.origin.x