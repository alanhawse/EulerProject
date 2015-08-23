//
//  main.swift
//  euler-9
//
//  Created by Alan Hawse on 8/10/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation


var max = 1000
var c = 0
var a2 = 0
var b2 = 0
var c2 = 0
for a in 1...max-1
{
    for b in a+1...max
    {
        c = 1000-a-b
        a2 = a*a
        b2 = b*b
        c2 = c*c
        
        if a2+b2 == c2
        {
            println("a = \(a) b=\(b) c=\(c)")
            println("a2 = \(a2) b2 = \(b2) c2 = \(c2)  ")
            println(a*b*c)
        }
    }
}