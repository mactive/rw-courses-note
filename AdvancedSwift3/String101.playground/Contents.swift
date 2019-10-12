//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var emptyString = ""
let antherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}


for character in "Dog!🐶".characters {
    print(character)
}

let catCharacters: [Character] = ["(",">","^","ω","^","<",")"]
let catString = String(catCharacters)

//: unicode 标量
let wiseWords = "\"Imagination is more important than hnowledge\" "
let dollarSign = "\u{25}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(before: greeting.endIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 6)
greeting[index]

greeting.characters.indices

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there".characters, at: welcome.index(before: welcome.endIndex))


func count(_ keyString:String, scenes: [String] ) -> Int {
    var keyCount = 0
    for scene in scenes {
        if scene.hasPrefix(keyString) {
            keyCount += 1
        }
    }
    
    return keyCount
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = count("Act 1 ", scenes: romeoAndJuliet)
print("There are \(act1SceneCount) scenes in Act 1")

