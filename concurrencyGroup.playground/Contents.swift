//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

let workerQueue = DispatchQueue(label: "com.raywenderlich.worker")
let numberArray = [(0,1), (2,3), (4,5), (6,7), (8,9)]

print("=== Group of sync tasks ===\n")

let slowAddGroup = DispatchGroup()

for inValue in numberArray {
    workerQueue.async(group: slowAddGroup) {
        let result = slowAdd(inValue)
        print("Result = \(result)")
    }
}

let defaultQueue = DispatchQueue.global()
slowAddGroup.notify(queue: defaultQueue) {
    print("SLOW ADD: Completed all tasks")
    PlaygroundPage.current.finishExecution()
}

sleep(2)

