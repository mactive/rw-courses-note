//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Person {
    struct ID {
        let value: Int
    }
    let name: String
    let age: Int
}

var persons = [
    Person(name: "ALice",age : 43),
    Person(name: "Bob", age: 34),
    Person(name: "Charlie", age: 22),
]

persons.sort{$0.age < $1.age}

var fruits: Set = ["Apple", "Pear", "Test"]
let theDeleteOne = fruits.remove("Test")
print("\(fruits) deleted \(theDeleteOne)")

var namesOfIntegers = [String: String]()
namesOfIntegers["name"] = "000"
namesOfIntegers["n"] = "161616"
namesOfIntegers