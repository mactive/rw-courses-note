//: [Previous](@previous)

import Foundation

enum Month: Int {
    case january, febrary, march, april, may, june, july, angust, september, october, november, december
}

let month: Month = Month.october

enum Semester {
    case fall
    case spring
    case summer
    case winter
}

let semester: Semester

switch month {
case .angust, .september, .october:
    semester = .fall
case .november, .december, .january:
    semester = .winter
case .febrary, .march, .april:
    semester = .spring
case .may, .june, .july:
    semester = .summer
}

// 前提是 Enum Month 需要有个类型
let monthsUntilWinterBreak = Month.december.rawValue - month.rawValue


enum TwoDimensionalPoint {
    case origin
    case onXAxis(Double)
    case onYAxis(Double)
    case noZeroCoordinate(Double, Double)
}

let coordinates = (0.0, 1.0)
let twoDimensionalPoint: TwoDimensionalPoint
switch coordinates{
case (0, 0):
    twoDimensionalPoint = .origin
case (let x, 0):
    twoDimensionalPoint = .onXAxis(x)
case (0, _):
    twoDimensionalPoint = .onYAxis(coordinates.1)
default:
    twoDimensionalPoint = .noZeroCoordinate(coordinates.0, coordinates.1)
}


//: [Next](@next)
