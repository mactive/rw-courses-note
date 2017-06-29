//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let maximunNumberOfLoginAttemptes = 10

var currentLoginAttempt = 0

let ingredients:Set = ["cocoa beans", "suger", "cocoa butter", "salt"]

if ingredients.contains("suger"){
    print("No thanks, too sweet.")
}

var primes: Set = [2,3,5,7]

print(primes.isSubset(of: 0..<10))

if primes.isEmpty {
    print("No primes")
} else {
    print("we have \(primes.count) primes")
}

let cat = "🐱猫";
print(cat)

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One thrid is \(oneThird) as a decimal"
print("Double.pi \(Double.pi), Float.pi \(Float.pi) ")


//: Tuple

let coordinates: (Int, Int) = (2,3)
let an_coordinates = (2.1, 4.4)
let x = an_coordinates.0

let coordinates3D = (x: 1, y: 8.9, z: 3)
let (a, b, c) = coordinates3D
print("coordinates \(a) \(b) \(c)")

var yearInfo = (year: 2017, month: 06, day: 11)
let (y,m,d) = yearInfo
yearInfo = (2017, 06, 12)
print("today is \(y),\(m),\(d)")



let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

let character1: Character = "🐶"
let string2: String = "🐶"




