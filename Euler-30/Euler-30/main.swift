//
//  main.swift
//  Euler-30
//
//  Created by Alan Hawse on 8/22/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

/*
Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

*/


func sumPowNum(var convert : Int, p : Double) -> Int
{
    var digits = [Int]()
    var result = 0.0
    while convert > 0 {
        
        result += pow(Double(convert%10),p)
        convert = convert / 10
    }
    return Int(result)
}

var max=10000000
var p = 5.0
var num=0

for var i=2;i<max;i++
{
    let result = sumPowNum(i,p)
    if result == i {
        num += i
        println(result)
    }
}

println("Answer = \(num)")
