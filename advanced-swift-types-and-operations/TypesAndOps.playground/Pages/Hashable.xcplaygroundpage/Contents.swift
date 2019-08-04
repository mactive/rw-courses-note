//: [Previous](@previous)

import Foundation

struct Email: Hashable {
    init?(_ raw: String) {
        guard raw.contains("@") else {
            return nil
        }
        address = raw
    }
    
    private(set) var address: String
}

var email = Email("mactive@gmai.com")

class User: Hashable {
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
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(email)
    }
    
    
}

//: [Next](@next)
