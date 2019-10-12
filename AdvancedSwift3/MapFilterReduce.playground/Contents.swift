//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let values: [Double] = [2.0, 4.0, 5.1 ]
let squares = values.map {$0 * $0}
print(squares)

let squares2 = values.map({
  (value: Double) -> Double in
  return value * value
})

print(squares2)

let plus1 = values.map { (value: Double) -> Double in
  return value + 1
}

print(plus1)

let milesToPoint = ["Point1": 120.0, "Point2": 50.0, "Point3": 40.0]
let kmToPoint = milesToPoint.map {name, miles in miles * 1.6093}

print(kmToPoint)
