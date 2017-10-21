//: Playground - noun: a place where people can play

import UIKit
// : 旋转木马
class Carousel<T: Printable> {
    var items = [T]()
    var currentPosition = 0
    var count: Int {
        return items.count
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    func append(item: T) {
        items.append(item)
    }
    func next() -> T? {
        if self.isEmpty {
            return nil
        }
        let nextItem = self.items[currentPosition]
        // 可以保证永远能找到值 用 % 的话
        currentPosition = (currentPosition + 1) % self.count
        return nextItem
    }
    subscript(position: Int) -> T? {
        if self.isEmpty {
            return nil
        }
        return items[position % self.count]
    }
}

protocol Printable {
    var description: String { get }
}

//extension Carousel: Printable {
//    var description: String {
//        return "\(count) items in Carousel"
//    }
//}

extension Carousel: Printable {
    var description: String {
        var _description = "Carousel has \(count) items: \n"
        for item in items {
            _description += "\t\(item.description)\n"
        }
        return _description
    }
}
extension String: Printable{
    var description: String {
        return "\(self) has \(characters.count) chars "
    }
}

//var intCarousel = Carousel<Int>()
//intCarousel.append(item: 1)
//intCarousel.append(item: 2)
//intCarousel.next()


//intCarousel.next()
//intCarousel.next()
var stringCarousel = Carousel<String>()
stringCarousel.append(item: "I")
stringCarousel.append(item: "am")
stringCarousel.append(item: "a")
stringCarousel.append(item: "superman")
print(stringCarousel.description)
