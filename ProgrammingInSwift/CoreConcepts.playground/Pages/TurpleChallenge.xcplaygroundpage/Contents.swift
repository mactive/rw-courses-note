//: [Previous](@previous)

import Foundation

//: ### Turple

//: Declare a constant typle that contains three Int values followed by a String. Use this to represent a date (month, day, year) followed by an emoji or word you might associte with that day

let halloween: (month: Int, day: Int, year: Int, means: String)
halloween = (10, 31, 2018, "👻")


//: Create another tuple, but this time name the constituent components, Give them names related to the date that they contain: month, day,year, emoji

let piaDay = (month: 3, day: 14, year: 1592, emoji: "🥧")

//: In one line. read the day and emoji value into two constants. You'll need to employ the underscore to ignore the month and year

let (_, day, _, emoji) = piaDay
day
emoji

//: Up until now, you're only seen constant tuples. But you can create variable tuples, too. Create one more tuple, like in the exercises above, but this time use var instead of let, Now change the emoji to a new value.

var brithday = (month: 5, day:24, year: 2018)
brithday.day = 20
// brithday.day = "20" error, Turple 是有类型推断的
brithday

//: [Next](@next)

