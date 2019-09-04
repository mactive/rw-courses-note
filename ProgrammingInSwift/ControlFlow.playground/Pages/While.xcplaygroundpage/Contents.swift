import UIKit

var i = 0

i = 10
repeat {
    print("repeat \(i)")
    i += 1
} while i < 10

i = 10
while i < 10 {
    print("while \(i)")
    i += 1
}

//: 退出机制

while i < 10 {
    print(i)
    if i > 5 {
        break
    }
    i += 1
}


//: Example 3: Swift break statement with nested loops
for j in 1...2 {
    for i in 1...5 {
        if i == 4 {
            break
        }
        print(">> i = \(i)")
    }
    print("j = \(j)")
}


//: Example 4: Labeled Statement with break

outerloop: for j in 1...2{
    innerloop: for i in 1...5 {
        if i == 4 {
            break outerloop
        }
        print("innerloop i = \(i)")
    }
    print("outerloop j = \(j)")
}
