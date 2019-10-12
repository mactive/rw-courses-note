//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func isASubclassOfNsObject<T>(objectToTest: T) -> Bool {
    return objectToTest is NSObject
}

print(isASubclassOfNsObject(objectToTest: String()))
print(isASubclassOfNsObject(objectToTest: NSString()))
print(isASubclassOfNsObject(objectToTest:[1,2,3]))
print(isASubclassOfNsObject(objectToTest:[String: Int]()))


func sumValues<T:SignedInteger>(value: T, value2:T) -> T {
    return value + value2
}

func sumDoubleValue<T: Numeric>(value1: T, value2: T) -> T {
    return value1 + value2
}

print(sumValues(value: 3, value2: 3))
print(sumValues(value: 3, value2: 6))
sumDoubleValue(value1: 3.1, value2: 4.3)

func exitingOrDefaultValue<KeyType: Hashable, ValueType>(dict:[KeyType:ValueType], key:KeyType, defaultValue: ValueType) -> ValueType {
    if let existingValue = dict[key] {
        return existingValue
    }
    return defaultValue
}
let dict = ["key": "A", "name": "B"]
exitingOrDefaultValue(dict: dict, key: "haha", defaultValue: "Key")


