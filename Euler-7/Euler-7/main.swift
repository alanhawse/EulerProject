//
//  main.swift
//  Euler-7
//
//  Created by Alan Hawse on 8/21/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/

// I solved this problem originally by finding the answer on the internet

import Foundation

let max = 1000000

var factors = [Bool](count: max+1, repeatedValue: true)

factors[0]=false
factors[1]=false
for var i=2;i<max;i++ {
    for var j=2*i;j<max;j=j+i {
        factors[j] = false
    }
}

var count=0
for var i=0;i<max;i++ {
    if factors[i] == true {
        count = count + 1
        if count == 10001 {
            println(i)
        }
    }
}

