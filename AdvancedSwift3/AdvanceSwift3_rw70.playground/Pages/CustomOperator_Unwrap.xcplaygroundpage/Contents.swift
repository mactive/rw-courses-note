//: [Previous](@previous)


infix operator !!: NilCoalescingPrecedence

func !!<Wrapped>(optional: Wrapped?, fatal: @autoclosure ()->Never) -> Wrapped {
    guard let unwrapped = optional else {
        fatal()
    }
    return unwrapped
}

var emptyValue: Int? = nil
var fullValue: Int? = 10

let value = fullValue !! fatalError("no value when one was expected")

//: [Next](@next)
