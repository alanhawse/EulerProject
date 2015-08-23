//
//  main.swift
//  Euler-26
//
//  Created by Alan Hawse on 8/18/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

let val=7


func div(val: Int) -> Int
{
    var rems = [Int:Bool]()
    var result = [Int]()
    var remainder=0
    var div=10
    do {
        remainder = div%val
        div = div / val
        result.append(div)
        if rems[remainder] != nil
        {
            break
        }
        rems[remainder] = true
        div = remainder * 10
    } while remainder != 0
    
    //println(result)
    return result.count-1
}

var maxCycle = 2
var maxNum = 2
for var i=2;i<1000;i++ {
    var res = div(i)
    if res>maxCycle
    {
        maxCycle = res
        maxNum = i
        
    }
}

println("MaxNum = \(maxNum) MaxCycle = \(maxCycle)")
