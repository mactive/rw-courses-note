//: [Previous](@previous)

//: ### FooLoop

import Foundation

//## range
let usefulConstant = 5
let closedRange: ClosedRange<Int> = 0...usefulConstant
let halfOpenRange = 0..<usefulConstant

closedRange.contains(3)

//: one loop

var sum = 0
var count = 10
for i in closedRange {
    sum += i
    print(i)
}

//: another loop
for i in 0...count where i % 2 == 1 {
    print("\(i) is an odd number.")
}

//: for coutinue

for floor in 10...15 {
    if floor == 13 {
        print("👻")
        continue // 继续循环但是会跳过本次循环剩下的代码
        // break // 会中断整个循环
    }
    print("Stop at floor \(floor)")
}

floor: for floor in 1...4 {
    room: for room in 11...14 {
        if room == 13 {
            print("👻")
            continue floor
        }
        print("room is \(floor)\(room)")
    }
    print("=== =Floor= ===")
}

//: [Next](@next)
