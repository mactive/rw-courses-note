//: [Previous](@previous)

import Foundation

struct Email: Equatable {
    // add some validation
    init?(_ raw: String) {
        guard raw.contains("@") else {
            return nil
        }
        address = raw
    }
    private(set) var address: String
}

class User: Equatable {
    var id: Int?
    var name: String
    var email: Email
    
    init(id: Int?, name: String, email: Email) {
        self.id = id
        self.name = name
        self.email = email
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id &&
        lhs.email == rhs.email &&
        lhs.name == rhs.name
    }
}

guard let email = Email("mac@meng.com") else {
    fatalError("Not valid email")
}
email.address

let user1 = User(id: nil, name: "Ray", email: email)
let user2 = User(id: nil, name: "Ray", email: email)

user1 == user2
user1 === user2

//: [Next](@next)
