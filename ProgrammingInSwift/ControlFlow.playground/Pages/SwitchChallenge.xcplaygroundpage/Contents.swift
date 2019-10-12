//: [Previous](@previous)

import Foundation

let lifeStage: String
let age = 80

//switch age {
//case ..<0:
//    lifeStage = "Not born yet"
//case 0...2:
//    lifeStage = "Infant"
//case 3...12:
//    lifeStage = "Child"
//case 13...19:
//    lifeStage = "Teenager"
//case 20...39:
//    lifeStage = "Adult"
//case 40...60:
//    lifeStage = "Middle aged"
//case 61...99:
//    lifeStage = "Eldery"
//case let age:
//    fatalError("Unaccounted for age: \(age)")
//}


let name = "Jessy"

switch (name, age) {
case (name, ..<0):
    lifeStage = "\(name) is Not born yet"
case (name, 0...2):
    lifeStage = "\(name) is Infant"
case (name, 3...12):
    lifeStage = "\(name) is Child"
case (name, 13...19):
    lifeStage = "\(name) is Teenager"
case (name, 20...39):
    lifeStage = "\(name) is Adult"
case (name, 40...60):
    lifeStage = "\(name) is Middle aged"
case (name, 61...99):
    lifeStage = "\(name) is Eldery"
case (_, let age):
    fatalError("Unaccounted for age): \(age)")
}

//: [Next](@next)
