//
//  main.swift
//  Euler-12
//
//  Created by Alan Hawse on 8/14/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

let numDivisors = 500

func numFactors(input : Int) -> Int
{
    var numDiv = 1
    for var i=input/2 ; i > 0 ; i-- {
        if input % i == 0 {
 //           println("Divisior = \(i)")
            numDiv = numDiv + 1
        }
    }
 //   println("Num divisiors = \(numDiv)")
    return numDiv
}


var triangle = 3
for var count = 3 ; true ; count++ {
    triangle = triangle + count
    if numFactors(triangle) > numDivisors {
        println(triangle)
        break
    }
}


