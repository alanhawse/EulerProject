//
//  main.swift
//  Euler-20
//
//  Created by Alan Hawse on 8/16/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

//
//  main.swift
//  Euler-16
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation


var vals = [Int]()
let maxDigits = 10.0

let maxVal = Int(pow(10.0,maxDigits))


let fact=100

vals.append(1)

func mult(multiple : Int) {
    let loopEnd = vals.count
    for var i=0;i<loopEnd;i++ {
        vals[i] = vals[i] * multiple
    }
    
    for var i=0;i<loopEnd;i++ {
        if vals[i]>=maxVal {
            
            let addedValue = vals[i] / maxVal
            vals[i] = vals[i] - addedValue*maxVal
            
            if i < vals.count - 1 {
                vals[i+1] = vals[i+1] + addedValue
            }
            else
            {
                vals.append(addedValue)
            }
        }
    }
    
}

for var i=1;i<=fact;i++ {
    mult(i)
}


var bigsum = 0
for i in vals {
    println(i)
    var sum = 0
    var divider = i
    for var j=0;j<=Int(maxDigits);j++ {
        sum = sum + divider%10
        divider = divider / 10
        
    }
    bigsum = bigsum + sum
    println("sum = \(sum)")
}


println("Bigsum = \(bigsum)")