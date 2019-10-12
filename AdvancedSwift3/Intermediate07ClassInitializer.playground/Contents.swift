//: Playground - noun: a place where people can play

import UIKit

enum Gender: String {
    case famale = "Mrs."
    case male = "Mr."
}

class User {
    var firstName:String
    var gender:Gender
    var score:Int
    
    init(score:Int) {
        self.score = score
        self.firstName = "Unknown"
        self.gender = Gender.male
    }
    
    convenience init(firstName:String, score:Int){
        self.init(score: score)
        self.firstName = firstName
    }
    
    convenience init(gender:Gender){
        self.init(firstName: "Unknown", score: 56)
        self.gender  = gender
    }
    
    func desc(){
        print("\(self.gender.rawValue) \(self.firstName) has \(self.score) score")
    }
}


var amy = User(firstName: "Amy", score: 99)
amy.desc()

var bob = User(gender: .famale)
bob.desc()
