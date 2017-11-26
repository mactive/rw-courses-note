//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
import Foundation

protocol Stackable: class {
    associatedtype Element: Comparable
    func push(_ element: Element)
    func pop() -> Element?
}

class Stack<Element>: Stackable where Element: Comparable {
    private var storage: [Element] = []
    func push(_ element: Element) {
        storage.append(element)
    }
    func pop() -> Element? {
        return storage.popLast()
    }
}

var stack1 = Stack<Int>()
stack1.push(13)
stack1.push(2)
stack1.pop()

var stack2 = Stack<Int>()

func pushToAll<S:Stackable>(stacks: [S], value: S.Element) {
    stacks.forEach { (stack) in
        stack.push(value)
    }
}

pushToAll(stacks: [stack1, stack2], value: 4)
dump(stack1)
dump(stack2)


//: [Next](@next)
