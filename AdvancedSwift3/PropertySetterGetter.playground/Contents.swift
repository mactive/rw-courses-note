//: Playground - noun: a place where people can play

import UIKit

//: 计算性属性 computed
class Crate {
    var name:String? = nil
    var grams = 0
    var lbs:Float {
        get {
            return Float(grams) / 454
        }
        set(newValue) {
            grams = Int(newValue * 454)
        }
    }
}

var egg = Crate()
egg.grams = 5000

// 取lbs的时候去拿 grams 的值去计算
print("egg weights \(egg.lbs) lbs ")

// 设置lbs的时候调用set方法 同时去设置grams
egg.lbs -= 0.3

print("egg weights now \(egg.grams) grams ")



//: 属性观察者 watched

class Bucket {
    var name: String? = nil
    var destination: String? = nil
    var grams = 0
    var lbs:Float {
        get{
            return Float(grams) / 454
        }
        set(newValue) {
            grams = Int(newValue * 454)
        }
    }
    
    var trackedLocations: [String] = [String]() {
        willSet(newValue) {
            if trackedLocations.isEmpty {
                print("Starting in \(newValue[0])")
            }
        }
        
        didSet(oldValue) {
            if let unwarppedDestination = destination {
                if trackedLocations.last == unwarppedDestination {
                    print("Arrived: \(unwarppedDestination)")
                }
            }
        }
    }
}

var myCrate = Bucket()
myCrate.destination = "Cupertino"
myCrate.trackedLocations.append("Tornoto")
myCrate.trackedLocations.append("Denver")
myCrate.trackedLocations.append("Los Angeles")
myCrate.trackedLocations.append("Cupertino")
myCrate.trackedLocations.append("Home")
print("Locations: \(myCrate.trackedLocations)")




