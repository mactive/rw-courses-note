//: Playground - noun: a place where people can play

import UIKit

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"
// createing the group


let backgroundQueue = DispatchQueue.global(qos: .background)
let defaultQueue = DispatchQueue.global()
let mainQueue = DispatchQueue.main

print("=== Starting userInitated global queue ===")

func task1(){
    print("Task1 started")
    sleep(1)
    print("Task1 finished")
}

func task2(){
    print("Task2 started")
    print("Task2 finished")
}

duration {
    backgroundQueue.async {
        task1()
    }
    backgroundQueue.async {
        task2()
    }
}
sleep(2)


//: ## Using a Private Serial Queue
//: The only global serial queue is `DispatchQueue.main`, but you can create a private serial queue. Note that `.serial` is the default attribute for a private dispatch queue:
// DONE: Create mySerialQueue

let mySerialQueue = DispatchQueue(label:"com.thinktube.serial")

print("\n=== Starting mySerialQueue ===")
// DONE: Dispatch tasks onto mySerialQueue
duration {
    mySerialQueue.async {
        task1()
    }
    
    mySerialQueue.async {
        task2()
    }
}

sleep(2)








PlaygroundPage.current.finishExecution()
