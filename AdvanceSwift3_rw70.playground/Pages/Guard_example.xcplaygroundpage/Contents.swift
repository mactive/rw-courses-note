//: [Previous](@previous)

import Foundation

struct Person {
    let name: String
    var age: Int
}

struct PersonViewModel {
    var name: String?
    var age: String?
    
    enum InputError: Error {
        case InputMissing
        case AgeIncorrect
    }
    

    func createPerson() throws -> Person {
        guard let age = age, let name = name,
            name.characters.count > 0,
            age.characters.count > 0
            else {
            throw InputError.InputMissing
        }
        
        guard let ageFormatted = Int(age) else {
            throw InputError.AgeIncorrect
        }
        
        return Person(name: name, age: ageFormatted )
    }
}


let personViewModel = PersonViewModel(name: "Taylor Swift", age: "20")

//: 使用guard 的代码 需要和 try 方法配合使用

//let person = try personViewModel.createPerson()
//print("Success! Person created. \(person)")

//: 配合 do catch 的使用 可以 catch 具体的错误
do {
    let person = try personViewModel.createPerson()
    print("Success! Person created. \(person)")
} catch PersonViewModel.InputError.InputMissing {
    print("Input missing!")
} catch PersonViewModel.InputError.AgeIncorrect {
    print("Age Incorrect!")
} catch {
    print("Something went wrong, please try again!")
}


//: [Next](@next)
