//: Playground - noun: a place where people can play

import UIKit

struct Book {
    var title: String
}

struct Author {
    var firstName: String
    var lastName: String
    var books: [Book] = []
    mutating func addBook(_ book:Book) {
        books.append(book)
    }
}

let book = Book(title: "The Stand")
var writer = Author(firstName: "Stephen", lastName: "King", books: [book])

writer.addBook(Book(title: "The Gunslinger"))
writer.books


