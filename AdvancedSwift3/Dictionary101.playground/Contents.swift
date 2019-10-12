//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]()


namesOfIntegers[16] = "sixteen"

for item in namesOfIntegers {
    print(item)
}

var airports: [String: String] = ["YYZ": "Tornoto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dubin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}

airports["APL"] = "Apple Internation"
airports["APL"] = nil

airports.removeValue(forKey: "APL")

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys.sorted() {
    print("\(airportCode)")
}
