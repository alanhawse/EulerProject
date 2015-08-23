//
//  main.swift
//  Euler-21
//
//  Created by Alan Hawse on 8/16/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//
/*
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
*/

let numbers=10000
var d = [Int]()
d.append(0)
d.append(0)

for var i=2;i<=numbers;i++ {
    var sum = 0
    for var j=1;j<=i/2;j++ {
       
        if i%j == 0 {
            sum = sum + j
        }
    }
    d.append(sum)
}

var pairSum=0

for var i=0;i<d.count-1;i++ {
    var di = d[i]
    if(di<=numbers+1)
    {
        if d[di] == i && di != i && i>di {
            pairSum += i + di
            println("d(\(i))=\(d[i])")
        }
    }
}

println("Pairsum = \(pairSum)")