//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol MutatingVehicle {
    mutating func accelerate()
    mutating func stop()
}

protocol Music {
    func play(musicName: String) -> Bool
}

class Transport {

}

class Unicycle: Vehicle {
    var peddling = false
    func accelerate() {
        print("squeaky squeaky")
        peddling = true
    }
    
    func stop() {
        peddling = true
    }
}

class Car: Transport, Vehicle, Music {
    var velocity = 0
    func play(musicName: String) -> Bool {
        return true
    }
    
    func accelerate() {
        print("Vrrrrrrrooom")
        velocity += 1
    }
    
    func stop() {
        velocity = 0
    }
}

class Boat{
    var knot = 0
}

extension Boat: Vehicle {
    func accelerate() {
        knot += 8
        print("swish swish")
    }
    
    func stop() {
        knot = 0
    }
}

struct Bicycle {
    var speed = 0
}

extension Bicycle: MutatingVehicle, Music {
    mutating func accelerate() {
        print("wooo wong")
        speed += 1
    }
    mutating func stop() {
        speed = 0
    }
    
    func play(musicName: String) -> Bool {
        return false
    }
}

var bi = Bicycle()
bi.accelerate()


var vehicles: [Vehicle] = []
vehicles.append(Car())
vehicles.append(Unicycle())
vehicles.append(Boat())
for v in vehicles {
    v.accelerate()
}

