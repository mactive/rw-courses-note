//: Playground - noun: a place where people can play
//: https://gradyzhuo.gitbooks.io/meetswifttutorial/content/Episode_1/Chapter_2.html
import UIKit

var str = "Hello, playground"
struct Person {
    var name: String
    var age: Int
}

let mac = Person(name: "Mac", age: 18)

extension Person: CustomStringConvertible {
    var description: String {
        return "Person name: \(self.name) age: \(self.age)"
    }
}

print(mac)


