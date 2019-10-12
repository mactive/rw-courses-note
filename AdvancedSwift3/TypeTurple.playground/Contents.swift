//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var httpError: (Int, String) = (404, "Not Found")

httpError.0 = 401

let (statusCode, statusMessage) = httpError

print("\(statusCode) means \(statusMessage)")

// * advance

let http200Status = (statusCode: 200, description: "OK")

print("\(http200Status.statusCode) equal to \(http200Status.0)")

// * optional

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = Optional.some(300)
//serverResponseCode = nil
let noNumber: Int? = Optional.none

var surverAnswer: String?
print("surverAnswer is \(surverAnswer)")


