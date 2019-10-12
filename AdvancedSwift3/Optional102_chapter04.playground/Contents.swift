//: Playground - noun: a place where people can play

import UIKit


var result: Int? = 30
print(result ?? 10)


var authorName: String? = "Stephen King"
if let unwarppedAuthorName = authorName {
    print("Author is \(unwarppedAuthorName)")
} else {
    print("No author.")
}

func checkAuthor(){
    guard let unwarppedAuthor = authorName else {
        print("No author")
        
        return
    }
    print("Author is \(unwarppedAuthor)")
}

checkAuthor()