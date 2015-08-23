//
//  main.swift
//  Euler-14
//
//  Created by Alan Hawse on 8/14/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

func next(current: Int) -> Int
{
    if current%2 == 0 {
            return current/2
    }
    return current * 3 + 1
    
    
}

func numInSeries(var start : Int) -> Int
{
    var count = 1
    while (start != 1) {
        count = count + 1
        start = next(start)
    
    }
    return count
}

var max = 0
var maxCount = 0

for var i=999999;i>2;i--
{
    var rval = numInSeries(i)
    if(rval > maxCount)
    {
        maxCount = rval
        max = i
    }
}

println("MaxCount = \(maxCount)")
println("max = \(max)")
