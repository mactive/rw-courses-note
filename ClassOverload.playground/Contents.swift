//: Playground - noun: a place where people can play

import UIKit

//: 可以多个init函数
//: 但是简单的在多的基础上, 参数的顺序可以改变, 但不能少, 类似二叉树集成的关系
//: 依赖其他方法初始化对象的init()方法叫做便捷初始化函数
class ShoppingCart {
    var items: [String]
    
    init() {
        items = [String]()
    }
    
    convenience init(item: String) {
        self.init()
        items.append(item)
    }
    

    convenience init(item: String, item2: String) {
        self.init(item: item)
        items.append(item2)
    }
}

//var cart1 = ShoppingCart(item: "dd", name: "adf")


var cart2 = ShoppingCart(item: "cat")
cart2.items

var cart3 = ShoppingCart(item: "ban", item2: "pan")
cart3.items
