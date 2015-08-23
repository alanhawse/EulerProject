//
//  main.swift
//  Euler-27
//
//  Created by Alan Hawse on 8/21/15.
//  Copyright (c) 2015 Alan Hawse. All rights reserved.
//

import Foundation

let max = 1000000
var primes = [Bool](count:max+1, repeatedValue:true)

primes[0] = false
primes[1] = false

println("Generating primes")
for var i=2;i<=max;i++ {
    for var j=i*2;j<=max;j=j+i {
        primes[j] = false
    }
    
}
println("Done generating primes")

/*
for var i=0;i<=max;i++ {
    if primes[i] == true {
        println(i)
    }
}
*/


func numConsecutivePrimes(b: Int, c: Int) -> Int
{
    var n=0
    var rval = 0
    var result=0
    
    do
    {
        result = n*n + b*n + c
        rval = rval + 1
        n = n + 1
        if result<0 {
            return rval - 1
        }
    
    } while ( primes[result] == true )
    
    return rval-1
    
}

let range = 1000
var maxResult = 0

var maxb = 0
var maxc=0

for var b = -1*range; b <= range ; b++
{
    for var c = -1*range; c <= range; c++ {
        let result = numConsecutivePrimes(b,c)
        if result>maxResult {
            maxb = b
            maxc = c
            maxResult = result
        }
    }
}
println("B=\(maxb) C=\(maxc) Result = \(maxResult)")
println("Answer = \(maxc*maxb)")
