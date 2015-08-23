//: Playground - noun: a place where people can play

import Cocoa

var val = 600851475143
//val = 1000
var i=2
println(val%2)

var factors = [Int]()

while val > 1
{
    if val%i == 0 {
        println(i)
        factors.append(i)
        val = val / i
    }
    else
    {
        i = i + 1
    }
    
}

factors.count
println(factors)


