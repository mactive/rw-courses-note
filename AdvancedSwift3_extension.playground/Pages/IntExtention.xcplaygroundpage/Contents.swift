//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//: swift3  init(repeating:count:)
extension Int {
    func repeats(word: String) -> [String] {
      return [String](repeating: word, count: self)
    }
}


3.repeats((word: "B")
