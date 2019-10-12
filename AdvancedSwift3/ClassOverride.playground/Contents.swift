//: Playground - noun: a place where people can play

import UIKit

class Record {
    var primaryId: Int = 0
    final func save() -> Bool {
        return true
    }
    
    func delete() -> Bool {
        print("Record.delete()")
        return true
    }
}

class Item: Record {
    var name: String = ""
    override func delete() -> Bool {
        print("Item.delete()")
        if(!safeToDelete()) {
            print("Unable to Delete: \(name)")
            return false
        }
        return super.delete()
    }
    
    func safeToDelete() -> Bool {
        return false
    }
}

var item:Item = Item()
item.name = "today"
item.delete()