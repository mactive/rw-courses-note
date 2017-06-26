//: Playground - noun: a place where people can play

import UIKit

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


let userQueue = DispatchQueue.global(qos: .userInitiated)
let defaultQueue = DispatchQueue.global()
let mainQueue = DispatchQueue.main

func task1(sleepTime: Int){
    print("Task1 start")
    sleep(UInt32(sleepTime))
    print("Task1 finish")
}

func task2(){
    print("Task2 start")
    sleep(2)
    print("Task2 finish")
}


defaultQueue.async {
    task1(sleepTime: 1)
}
defaultQueue.async {
    task1(sleepTime: 1)
}
userQueue.async {
    task2()
}



sleep(5)
print("end")

PlaygroundPage.current.finishExecution()