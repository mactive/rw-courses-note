//: Playground - noun: a place where people can play

import UIKit

//: func  _ 和 by 都是 参数别名
func multiply(_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}

multiply(5, by: 7)

//: closure

var multiplyClosure: (Int,Int) -> Int = {
    (number:Int, multiplier:Int) -> Int in
    return number * multiplier
}

var plusClosure: (Int, Int) -> Int = {
    (number:Int, plus: Int) -> Int in
    return number + plus
}
//: closure 简明写法
var plusClosureSinple: (Int, Int) -> Int = { return $0 + $1 }

func runNumberClosure(_ numClosure: (Int,Int) -> Int, firstNum: Int, secondNum: Int) -> Int {
    return numClosure(firstNum, secondNum)
}

runNumberClosure(multiplyClosure, firstNum: 8, secondNum: 9)
runNumberClosure(plusClosure, firstNum: 8, secondNum: 9)
runNumberClosure(plusClosureSinple, firstNum: 7, secondNum: 8)


var anotherClosure: () -> Void = { print("Hello")}
func runClosure(_ aClosure:() -> Void) {
    aClosure()
}

runClosure(anotherClosure)
