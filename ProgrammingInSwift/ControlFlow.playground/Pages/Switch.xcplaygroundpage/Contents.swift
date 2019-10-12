//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let number = 15
let numberDescription: String

switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0 :
    numberDescription = "Nagative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No Description"
}


//: second boolean

let numberIsEven: Bool

switch number % 2 {
case 0:
    numberIsEven = true
default:
    numberIsEven = false
}

//: string

let animalString = "Elephant"
let isHousePet: Bool

switch animalString {
case "Dog", "Cat", "Potbellied Hamster":
    isHousePet = true
default:
    isHousePet = false
}

//: turple
//let coordinates = (0.0, 0.0) // 初始化是 decimal 匹配时(0,0)不需要那么严格
//let coordinates = (2.0, 0.0)
//let coordinates = (2.0, 4.0) //  let (x, y) where y == x * x:
let coordinates = (1.0, 1.0) //  let (x, y): as default

let pointCategory: String

switch coordinates {
case (0,0) :
    pointCategory = "Origin"
    // turple 中只匹配到了其中一个值也可以的
case (let x, 0):
    pointCategory = "On the x-axis at \(x)"
case (0, let y):
    pointCategory = "On the y-axis at \(y)"
case let (x, y) where y == x * x:
    pointCategory = "Along y = x ^ 2"
case _ where coordinates.0 == coordinates.1:
    pointCategory = "Along y = x"
case let (x, y):
    pointCategory = "No zero coordinates. x= \(x) y=\(y)"
}


//: case 是有判断顺序的. 只要满足几个就会跳出


//: [Next](@next)
