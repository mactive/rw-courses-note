//: Playground - noun: a place where people can play

import UIKit

func numberCount(nums: [Int]) -> (Int, Int) {
    var evenCount = 0
    var oddCount = 0
    for number in nums {
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return (evenCount, oddCount)
}

let randomNumbers = [2,5,6,7,8,13,81,99]

let count = numberCount(nums: randomNumbers)
print("count has \(count.0) even and \(count.1) odd number")

let iceCreamCone:(Int, String, String) = (2, "chocolate", "cone")
let (_, flavor, _) = iceCreamCone

//: switch 结合 tuple

let iceCreamCup = (scoops: 1, flavor: "vanilla", style: "cup")

switch iceCreamCup {
case (0,_,_):
    print("I don't like ice cream")
case (1, "vanilla", _):
    print("One single scoop of vanilla for me")
    fallthrough
case (1,_,_):
    print("I'd like one scoop of \(iceCreamCup.flavor) in a \(iceCreamCup.style)")
case (_, "chocolate",_):
    print("I love chocolate and I want \(iceCreamCup.scoops)")
default:
    let ice = iceCreamCup
    print("I'd like \(ice.scoops) scoops of \(ice.flavor) in a \(ice.style)")
}