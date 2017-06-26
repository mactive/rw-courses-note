//: Playground - noun: a place where people can play

import UIKit

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")


someInts.append(3)

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles:[Double] = Array(repeating: 2.5, count:3)


var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs", "Milk"]

print("The shoppping list contains \(shoppingList.count) items.")


shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate spread", "Cheese", "Butter"]
shoppingList[0] = "Six eggs"
shoppingList[3...5] = ["Bananas", "Apples"]



shoppingList.insert("Maple Syrup", at: 0)

let removedOne = shoppingList.remove(at: 1)


if !shoppingList.isEmpty {
    print("\(shoppingList) is not Empty")
}

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index+1): \(value)")
}
