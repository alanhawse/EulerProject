//
//  main.swift
//  Euler-34
//
//  Created by Alan Hawse on 8/24/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

/*
Problem 34
145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.
*/

import Foundation

func factorial(val : Int) -> Int
{
    var fact=1
    
    for var i=1;i<=val;i++ {
        fact = fact * i
    }
    return fact
}

let max = 1500000

var sum=0
var rem=0
var val=0

var answer=0

for var i=3;i<max;i++ {
   /// println("i = \(i)")
    sum = 0
    val = i
    do {
        rem = val%10
        //println("rem = \(rem)")
        sum = sum + factorial(rem)
        val = val / 10
    }
    while val != 0
    
    if i == sum {
        println("i=\(i) sum=\(sum)")
        answer = answer + i
    }
}

println("Answer = \(answer)")
