//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
protocol SomeProtocol {
    func ptt() -> Bool
}

struct Person : SomeProtocol {
    let name: String
    var salary: Int
    func ptt() -> Bool {
        print("\(name) has \(salary) money")
        return true
    }
}

let p1 = Person(name: "tod", salary: 400)
p1.ptt()


protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

struct numberOfPop : AnotherProtocol{
    static var someTypeProperty: Int = 0 // 因为要求实现get 和 set 方法所以不能是 let
}

//: 协议的方法要求
protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 2877.0
    let c = 19572.0
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print(generator.random())
print(generator.random())