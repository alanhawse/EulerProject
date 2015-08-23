//
//  main.swift
//  euler-5
//
//  Created by Alan Hawse on 8/10/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation


var current = 10
let divRange = 20
var works = false
var i = 0

while works == false {
    
    works = true
    current = current + 1
    for i in 1...divRange {
        if current%i != 0
        {
            works = false
            break
        }
    }
}

println("Current = \(current)")
