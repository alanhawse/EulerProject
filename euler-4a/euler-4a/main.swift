//
//  main.swift
//  euler-4a
//
//  Created by Alan Hawse on 8/9/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation



func palindrome(input: String) -> Bool {
    var in1 = reverse(input)
    var in2 = reverse(in1)
    for i in 0...in1.count-1
    {
        if in1[i] != in2[i] {
            return false
        }
    }
    return true
}

var big = 0
var bigi = 0
var bigj = 0
for i in 100...1000 {
    for j in 100...1000 {
        var prod = i * j
        if palindrome("\(prod)") {
            if prod > big {
                big = prod
                bigi = i
                bigj = j
            }
            
        }
    }
}
println(big)
println(bigi)
println(bigj)

