//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

extension NSURL {
  func getParams()->[String: String] {
    let components = NSURLComponents(url: self as URL, resolvingAgainstBaseURL: false)
    let queryItems = components?.queryItems ?? []
    print(queryItems)

    return queryItems.reduce(
      [String: String](),
      {
        (dict, item)-> [String:String] in
          print(item)
//        dict[item.name] = item.value ?? ""
        return dict
      }
    )
  }
}

let url = NSURL(string: "http://host/?first=grady&last=zhuo&github=1")
url?.getParams()
