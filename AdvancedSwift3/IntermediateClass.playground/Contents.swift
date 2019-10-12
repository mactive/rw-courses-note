//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
let imposterJohn = Person(firstName: "Johnny", lastName: "Appleseed")
let shadowJohn  = john

if (john !== imposterJohn) {
    print("They has same values but not same one")
}

if (john === shadowJohn) {
    print("They are exsited someone, reference is also same")
}

shadowJohn.firstName = "Not John"
print(john.firstName)
