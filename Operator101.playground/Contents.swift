//: Playground - noun: a place where people can play

import UIKit

//: turple 比较预算
//: 比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。如果所有
//: 的值都相等，那么这一对元组我们就称它们是相等的

let turple1 = (1, "zebra")
let turple2 = (2, "apples")
let turple3 = (2, "apple")

if turple1 < turple2 {
    print("\(turple1) is smaller")
}

if turple2 > turple3 {
    print("\(turple2) is bigger")
}

let loopRange = 1..<4
let loopRange2 = 1...6


for index in loopRange2 {
    print("\(index) * 5 = \(index * 5)")
}