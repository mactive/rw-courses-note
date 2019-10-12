//: Playground - noun: a place where people can play

import UIKit

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")

letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

if favoriteGenres.isEmpty {
    print("favoriteGenres is empty")
}

favoriteGenres.insert("1azz")

//favoriteGenres.remove("Rock")

if favoriteGenres.contains("Hip hop") {
    print("I get up on Hip hop")
}

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]
let subDigits: Set = [1,3]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.intersection(singleDigitPrimeNumbers)
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
subDigits.isSubset(of: oddDigits)


