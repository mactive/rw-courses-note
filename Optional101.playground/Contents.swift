//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Name {
    var firstName: String
    var lastName: String
}

struct Person {
    var name: Name?
    var age: Int
}


func getName(person: Person?) -> String? {
    return person?.name?.firstName
}

var person: Person? = Person(name: Name(firstName:"san", lastName: "zhang"), age: 18)

print(person!.name!.firstName)
print(person?.name?.firstName)
getName(person: person)

if let firstName = person?.name?.lastName {
    print(firstName)
}

var personA: Person?
personA?.name