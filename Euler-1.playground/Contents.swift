//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let range = 1000
var factors = [Int:Int]()
var i = 3
while (i<range) {
    factors[i] = 1
    i = i + 3
}
i = 5
while(i<range)
{
    factors[i] = 1
    i = i + 5
}

var sum = 0
for keys in factors {
    sum = sum + keys.0
}

println("Sum =\(sum)")


