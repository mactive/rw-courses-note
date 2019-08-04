//: [Previous](@previous)

import Foundation

struct Named<T>: Hashable, ExpressibleByStringLiteral, CustomStringConvertible {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    init(stringLiteral value: String) {
        name = value
    }
    var description: String {
        return name
    }
}

enum StateTag: String {
    case Alabama = "Alabama"
    case Alaska = "Alaska"
}
enum CapitalTag {}

typealias State = Named<StateTag>
typealias Capital = Named<CapitalTag>


var lookup: [State: Capital] = ["Alabama": "Moutgomery",
                                "Alaska": "Juneau",
                                "Arizona": "Phoenix"]
func printStateAndCapital(_ state: State, _ capital: Capital) {
    print("The capital of \(state) is \(capital)")
}

func test() {
    let alaska: State = State("Alaska")
    guard let capital = lookup[alaska] else {
        return
    }
    printStateAndCapital(alaska, capital)
}

test()



//: [Next](@next)
