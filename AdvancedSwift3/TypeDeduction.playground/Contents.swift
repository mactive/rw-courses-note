//: Playground - noun: a place where people can play

import UIKit

protocol Speaks {
    func speak() -> String
}

struct Duck:Speaks {
    func speak() -> String {
        return "quack"
    }
}

struct Dog: Speaks {
    func speak() -> String {
        return "bark"
    }
}


let fido = Dog()
let donald = Duck()

let pets:[Speaks] = [fido, donald]
if let what = pets.first {
    print(what.speak())
}