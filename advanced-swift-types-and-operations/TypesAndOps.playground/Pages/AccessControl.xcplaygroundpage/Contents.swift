//: [Previous](@previous)
// https://swift.gg/2016/01/11/public-properties-with-private-setters/
// https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html


import Foundation

public struct TrackedString {
    // 公开 Getter，隐藏 Setter
    public private(set) var numberOfEdits = 0
    public var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
    public init() {}
}

var name: TrackedString = TrackedString()
name.value = "name"
name.numberOfEdits
name.value = "name1"
name.numberOfEdits

//: [Next](@next)
