//: Playground - noun: a place where people can play
//: http://www.jianshu.com/p/3c4e7dd6844f

import UIKit

var str = "Hello, playground"

var None:String? = Optional.none
print("None is \(None)")

None = "Something"

print("None is \(None)")

let beSure = None!

struct Jackson {
    var pet: Pet?
    var home: String
}

struct Pet {
    var favoriteToy: String
    var age: Int
}

let ppet:Pet = Pet(favoriteToy: "yoyo", age: 5)
let jackon: Jackson = Jackson(pet: ppet, home: "liaocheng")
print(jackon.pet?.favoriteToy)