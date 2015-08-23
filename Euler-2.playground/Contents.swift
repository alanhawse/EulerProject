//: Playground - noun: a place where people can play

import Cocoa

var fib = [Int]()

let max = 4000000

fib.append(1)
fib.append(2)

var current = 1

println(current)

var vals = 0

while fib[current] < max
{
    if fib[current] < max && fib[current]%2 == 0
    {
        vals = vals + fib[current]
    }
    current = current + 1
    fib.append(fib[current-1] + fib[current-2])
  
}

println(fib.count)
println(fib)
println(fib[fib.count-1])
println(vals)




