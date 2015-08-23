//
//  main.swift
//  euler-6
//
//  Created by Alan Hawse on 8/10/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

println("Hello, World!")

let max = 100

var sums = 0
var sum = 0

var i = 1

for i in 0...max {
    sum = sum + i
    sums = sums + i*i
}
sum = sum * sum
println("sum = \(sum)")
println("sums = \(sums)")
let sumdiff = sum - sums
println("sum = \(sumdiff)")
