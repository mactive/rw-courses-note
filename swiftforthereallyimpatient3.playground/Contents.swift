//: Playground - noun: a place where people can play

import UIKit

class Device {
    let type: String
    let identifier: String
    var name: String
    var totalCapacity = 0
    var freeCapacity = 0
    let hasCellular = false
    
    convenience init(name: Strting) {
        self.name = name
    }
    
    init(type: String, identifier: String, name: String, totalCapacity: Int, systemUsage: Int) {
        self.type = type
        self.identifier = identifier
        self.name = name
        self.totalCapacity = totalCapacity
        freeCapacity = self.totalCapacity - systemUsage
        saveToDatabase()
    }
    

    
    deinit {
        print("Device deinit")
    }
    
    class func findDeviceWithIdentifier(identifier: String) -> Device? {
        print("find device in the database")
//        return Device(name: "ipad")
        return nil
    }
    
    func saveToDatabase() -> Bool {
        return true
    }
}

var device = Device(type: "1", identifier: "2", name: "3", totalCapacity: 4, systemUsage: 2)

device.saveToDatabase()


if let myDevice = Device.findDeviceWithIdentifier(identifier: "ddd") {
    print("mydevice \(myDevice.name)")
} else {
    print("no decvice in database")
}
