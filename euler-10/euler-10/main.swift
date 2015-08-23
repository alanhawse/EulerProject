//
//  main.swift
//  euler-10
//
//  Created by Alan Hawse on 8/10/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

let num = 2000000

var max = Int(sqrt(Double(num)))
var sieve = [Bool](count: num+1, repeatedValue:true)
sieve[0] = false
sieve[1] = false

for i in 2...max {
    if sieve[i] == true {
        var j = i*i
        while j<num  {
            sieve[j] = false
            j = j + i
        }
    }
}

var sum=0
for var i=0;i<num;i++ {
    if sieve[i] != false {
        sum = sum + i
    }
}

println("Sum = \(sum)")