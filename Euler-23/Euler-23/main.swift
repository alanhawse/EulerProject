//
//  main.swift
//  Euler-23
//
//  Created by Alan Hawse on 8/16/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation
/*
Problem 23
A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

*/

enum intType {
    case perfect
    case abundant
    case deficient
}


func factor(val: Int) -> ([Int], intType)
{
    var sum=0
    var rval = [Int]()
    for var i=1;i<=val/2;i++ {
        if val % i == 0 {
            sum = sum + i
            rval.append(i)
        }
    }
    var rtype : intType
    
    if(sum<val) {
        rtype = .deficient
    }
    else if sum == val {
        rtype = .perfect
    }
    else
    {
        rtype = .abundant
    }

    return (rval,rtype)
}

let max = 28124

var abundant = [Int]()

for var i=12;i<max;i++ {
    var result = factor(i)
    if result.1 == .abundant
    {
        abundant.append(i)
    }
}

println(abundant.count)
println("Abundant")
/*
for i in abundant {
    println(i)
}
*/

println("Starting combination")

var result = [Bool](count: max, repeatedValue: false)


var sum=0
for var i=0;i<abundant.count;i++
{
    for var j=0;j<abundant.count;j++
    {
        sum=abundant[i]+abundant[j]
        
        if sum < max {
            result[sum] = true
        }
    }
}




sum=0
for var i=0;i<result.count;i++
{
    if result[i] == false {
        sum += i
       // println(i)
    }
    
}

println(sum)

