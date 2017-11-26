//: [Previous](@previous)

import Foundation

struct PointStruct: CustomStringConvertible {
    var x, y: Int
    var description: String {
        return "(\(x) \(y))"
    }
    
    mutating func transpose() {
        (x, y) = (y, x)
    }
}

class PointClass: CustomStringConvertible {
    var x, y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    var description: String {
        return "(\(x), \(y))"
    }
    
    func transpose() {
        (y, x) = (x, y)
    }
}

var ps1 = PointStruct(x: 10, y:100)
var ps2 = ps1
ps1.x = 200
ps1
ps2.x = 101
ps2.transpose()

var pc1 = PointClass(x: 10, y:100)
var pc2 = pc1
pc1.x = 133
pc1
pc2
pc2.transpose()
pc1
