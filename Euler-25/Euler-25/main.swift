//
//  main.swift
//  Euler-25
//
//  Created by Alan Hawse on 8/17/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

let maxDigits = 2.0
let maxVal = Int(pow(10.0,maxDigits))

func numDigits(a : [Int]) -> Int
{
    var rval = ( a.count - 1) * Int(maxDigits) + ("\(a[a.count-1])" as NSString).length
    
    return rval
}

func add(a : [Int], b : [Int]) -> [Int]
{
    
    var rval = [Int]()
    
    var v1 : [Int]
    var v2 : [Int]
    
    var loopEnd = 0
    if a.count > b.count
    {
        loopEnd = a.count
        v1 = a
        v2 = b
    }
    else
    {
        loopEnd = b.count
        v1 = b
        v2 = a
    }
    
    for var i=0;i<loopEnd;i++ {
        if i < v2.count {
            rval.append( v1[i] + v2[i] )
        }
        else
        {
            rval.append(v1[i])
        }
    }
    
    for var i=0;i<loopEnd;i++ {
        if rval[i]>=maxVal {
            
            let addedValue = rval[i] / maxVal
            rval[i] = rval[i] - addedValue*maxVal
            
            if i < rval.count - 1 {
                rval[i+1] = rval[i+1] + addedValue
            }
            else
            {
                rval.append(addedValue)
            }
        }
    }
    return rval
    
}

let seek = 1000
var fib = 2
var n0 = [1]
var n1 = [1]
var ncur = [0]

var numDig = 1
while numDig<seek
{
    ncur = add(n0,n1)
    n0 = n1
    n1 = ncur
    fib = fib + 1
    numDig = numDigits(ncur)
}

println(ncur)

println(numDig)

println("Fib Num = \(fib)")
