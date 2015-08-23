//
//  main.swift
//  Euler-31
//
//  Created by Alan Hawse on 8/22/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//
/*
In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?
*/

// this works... but would be better to put in breaks in inner loops if total exceeds objective

import Foundation
var count = 1
var obj = 200

for var p1=0;p1<=obj;p1++ {
    for var p2=0;p2<=obj/2;p2++ {
        for var p5=0;p5<=obj/5;p5++ {
            for var p10=0;p10<=obj/10;p10++ {
                for var p20=0;p20<=obj/20;p20++ {
                    for var p50=0;p50<=obj/50;p50++ {
                        for var p100=0;p100<=obj/100;p100++ {
                            let total = p1 + p2*2 + p5*5 + p10*10 + p20*20 + p50*50 + p100*100
                            if total == obj {
                                count = count + 1
                            }
                        }
                    }
                }
                
            }
        }
    }
}

println(count)