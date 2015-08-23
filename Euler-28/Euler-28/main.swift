//
//  main.swift
//  Euler-28
//
//  Created by Alan Hawse on 8/21/15.
//  Copyright (c) 2015 Alan Hawse. All rights reserved.
//

import Foundation


var sum = 1

let size = 1001

var end = 3

for var i=1; i <= size/2 ; i++
{
   // println("Starts = \(end)")
    let loopSum = 4*end + (i*2)*6
    sum = sum + loopSum
   // println("i=\(i) loopSum =\(loopSum) sum=\(sum)")
    end = end + (i*2)*3 + (i+1)*2
    
}

println("Sum = \(sum)")
