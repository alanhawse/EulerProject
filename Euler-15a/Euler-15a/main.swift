//
//  main.swift
//  Euler-15a
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

let size = 20

var lattice = [[Int]]()
for i in 0...size+1 {
    lattice.append([Int](count: size+2, repeatedValue: 0))
}

lattice[size-1][size+1]=1
lattice[size+1][size-1]=1


for var x=size; x >= 0; x--
{
    for var y=size; y >= 0 ; y--
    {
        lattice[x][y] = lattice[x][y+1] + lattice[x+1][y]
        
    }
}

println("Num = \(lattice[0][0])")