//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

extension Array where Element: Hashable {
  func combineHashString() -> String {
    /*
     var result = ""
     for element in self {
       result += "\(element.hashValue)"
     }
     */
    return self.reduce("", {(str, element) -> String in
      print("\(element):\(element.hashValue)")
      return str + "\(element.hashValue)"
    });
  }
}

let stringArray = ["1", "2", "3"]
print(stringArray.combineHashString())
