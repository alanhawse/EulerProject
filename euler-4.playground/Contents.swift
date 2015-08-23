//: Playground - noun: a place where people can play

import Cocoa

func palindrome(input: String) -> Bool {
    var in1 = reverse(input)
    var in2 = reverse(in1)
    for i in 0...in1.count-1
    {
        if in1[i] != in2[i] {
            return false
        }
    }
    return true
}

var big = 0
var bigi = 0
var bigj = 0
for i in 10...100 {
    for j in 10...100 {
        var prod = i * j
        if palindrome("\(prod)") {
            if prod > big {
                big = prod
                bigi = i
                bigj = j
            }
      
        }
    }
}
println(big)
println(bigi)
println(bigj)
