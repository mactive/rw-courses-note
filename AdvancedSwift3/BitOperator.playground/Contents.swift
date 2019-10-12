//: Playground - noun: a place where people can play
//: 按位运算
//: 0b 2进制 binary
//: 0o 8进制 octonary
//: 0x 16进制 hexadecimal

//: NOT(~(单目运算符)), AND(运算符为 &), OR(运算符为\|), XOR(运算符为 ^)以及左移和右移(运算符分别为 << 和 >>)。
import UIKit


let a:UInt8 = 0b01111111
let b:UInt8 = 0b00000010

let c = a & b
let d = a | b
let e = ~a
let f = a ^ b
let g = a << 1
let h = b >> 1