//
//  main.swift
//  Euler-35
//
//  Created by Alan Hawse on 8/24/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

/*
Circular primes
Problem 35
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?

*/

let max = 1000000

println("Starting primes")
var primes = [Bool](count: max+1, repeatedValue: true)

primes[0]=false
primes[1]=false
for var i=2;i<max;i++ {
    for var j=2*i;j<max;j=j+i {
        primes[j] = false
    }
}
println("primes done")


var answer = 0
for var i = 1 ; i<max;i++ {
    var ndigits = count("\(i)")
    var testVal = i
    var pflag = true
    for var j=0;j<ndigits;j++ {

        if primes[testVal] == false {
            pflag = false
            break
        }
        var rem = testVal % 10
        testVal = testVal / 10
        testVal = Int(pow(10.0,Double(ndigits-1))) * rem +  testVal
    }
    if pflag == true {
        println("I = \(i)")
        answer = answer + 1
    }
}

println("Answer = \(answer)")
