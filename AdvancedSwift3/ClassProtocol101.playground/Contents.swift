//: Playground - noun: a place where people can play

import UIKit

protocol Compressible {
    static var isHardwareAcceleratedCompression: Bool { get }
    var estimatedCompressionRatio: Float { get }
    var shouldCompress: Bool { get set }
    
    static func compressibleFormats() -> String
    func compress() -> Bool
}

protocol Savable {
    func save() -> Bool
}

class Image: Compressible, Savable {
    
    static var isHardwareAcceleratedCompression: Bool = true
    var estimatedCompressionRatio: Float = 2.1
    var shouldCompress: Bool = true
    
    func compress() -> Bool {
        return true
    }
    
    static func compressibleFormats() -> String {
        return "YES"
    }
    
    func save() -> Bool {
        return true
    }
    
    init(){
        print("Image init")
    }
}

func compress(file:Compressible) -> Bool {
    return true
}

func save(file: protocol<Savable, Compressible>, path: String) -> Bool {
    return true
}

var myImage: Image = Image()
Image.compressibleFormats()
compress(file: myImage)

save(file: myImage, path: "/var")

