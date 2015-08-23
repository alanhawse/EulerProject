//
//  main.swift
//  Euler-24
//
//  Created by Alan Hawse on 8/16/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation
/*
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

*/

let numDigits = 10

var count = 0
for var i=0123456789 ; i<=9876543210 ; i++
{
 //   println("i = \(i)")
    var bitMask = 0
    bitMask  = 0
    var noDuplicate = true
    var current = i
    for var j=0;j<numDigits;j++ {
        var x = current % 10
        var mask = 1<<x
        if mask & bitMask == mask {
            break
        }
        bitMask |= mask
        current = current / 10
    }
    if bitMask == 0b1111111111 {
        count += 1
        if count == 1000000 {
            println(i)
            break
        }
    }
    
}

