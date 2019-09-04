//: [Previous](@previous)

import Foundation

// roll some times until you can get the 6
// repeat and while

var count = 0
var roll: Int = 0

repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("roll \(count) counts, roll is \(roll)")
} while roll != 6


// you can roll but you can't roll over 4 times

count = 0
roll = 0
repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("roll \(count) of 4 counts, roll is \(roll)")
} while roll != 6 && count < 4

//: [Next](@next)
