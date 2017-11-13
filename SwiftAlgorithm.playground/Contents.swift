//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

class Node<T> {
  var value: T
  var children: [Node] = [] // add the children property
  weak var parent: Node? // add parent property
  
  init(value: T) {
    self.value = value
  }
  
  func add(child: Node) {
    children.append(child)
    child.parent = self
  }
  
}

extension Node: CustomStringConvertible {
  var description: String {
    var text = "\(value)"
    if !children.isEmpty {
      text += " { \n" + children.map{$0.description}.joined(separator: ", \n") + "\n} "
    }
    return text
  }
}

extension Node where T: Equatable {
  // 1
  func search(value: T) -> Node? {
    // 2
    if value == self.value {
      return self
    }
    // 3
    for child in children {
      if let found = child.search(value: value) {
        return found
      }
    }
    // 4
    return nil
  }
}

extension Node {
  var depth: Int {
    get {
      var level: Int = 1
      
      for child in children {
        if !child.children.isEmpty {
          level += child.depth
        }
      }
      
      return level
    }
  }
  
  var leafCount: Int {
    var _count = 0
    for child in children {
      if !child.children.isEmpty {
        _count += child.leafCount
      } else {
        _count += 1
      }
    }
    return _count
  }
  var nodeCount: Int {
    var _count = 0
    for child in children {
      if !child.children.isEmpty {
        _count += child.nodeCount
      }
      
      _count += 1
      
    }
    return _count
  }
}


let beverages = Node(value: "beverages")

let hotBeverage = Node(value: "hot")
let coldBeverage = Node(value: "cold")

let tea = Node(value: "tea")
let coffee = Node(value: "coffee")
let cocoa = Node(value: "cocoa")

let blackTea = Node(value: "black")
let greenTea = Node(value: "green")
let chaiTea = Node(value: "chai")

let soda = Node(value: "soda")
let milk = Node(value: "milk")

let gingerAle = Node(value: "ginger ale")
let bitterLemon = Node(value: "bitter lemon")


beverages.add(child: hotBeverage)
beverages.add(child: coldBeverage)

hotBeverage.add(child: tea)
hotBeverage.add(child: coffee)
hotBeverage.add(child: cocoa)

coldBeverage.add(child: soda)
coldBeverage.add(child: milk)

tea.add(child: blackTea)
tea.add(child: greenTea)
tea.add(child: chaiTea)

soda.add(child: gingerAle)
soda.add(child: bitterLemon)

print(beverages)
let found = beverages.search(value: "ginger ale")!
print(found)
print(beverages.leafCount,beverages.nodeCount)
print(coldBeverage.leafCount,coldBeverage.nodeCount)

