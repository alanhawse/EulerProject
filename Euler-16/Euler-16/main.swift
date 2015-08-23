//
//  main.swift
//  Euler-16
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation


var vals = [Int]()
let maxDigits = 1.0
let maxVal = Int(pow(10.0,maxDigits))

let scale=1000

vals.append(2)

func doubleArray() {
    let loopEnd = vals.count
    for var i=0;i<loopEnd;i++ {
        vals[i] = vals[i] * 2
    }
    
    for var i=0;i<loopEnd;i++ {
        if vals[i]>=maxVal {
            vals[i] = vals[i] - maxVal
            if i < vals.count - 1 {
                vals[i+1] = vals[i+1] + 1
            }
            else
            {
                vals.append(1)
            }
        }
    }
    
  
}

for var i=0;i<scale-1;i++ {
    doubleArray()
}

for i in vals {
    println(i)
}
println("----")


var output = ""
var sum = 0
for var i=vals.count-1;i>=0;i-- {
        output = output + "\(vals[i])"
    sum = sum + vals[i]
}
println(output)
println(sum)