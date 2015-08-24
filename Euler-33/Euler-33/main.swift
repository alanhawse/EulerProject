//
//  main.swift
//  Euler-33
//
//  Created by Alan Hawse on 8/23/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

/* 
Digit cancelling fractions
Problem 33
The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
*/

for var den = 11 ; den <= 99 ; den++ {
    for var num = 10 ; num < den ; num++ {
        var act = Double(num) / Double(den)
        var n1 = num%10
        var n2 = num/10
        var d1 = den%10
        var d2 = den/10
      
        if n1==0 {
            continue
        }
        
        if n1 == d1 {
         
            if act == Double(n2) / Double(d2) {
                println("\(num)/\(den)")
            }
        }
        
        if n1 == d2 {
            if act == Double(n2) / Double(d1) {
                println("\(num)/\(den)")
            }
        }
        
        if n2 == d1 {
            if act == Double(n2) / Double(d1) {
                println("\(num)/\(den)")
            }
        }
        
        if n2 == d2 {
            if act == Double(n1) / Double(d1) {
                println("\(num)/\(den)")
            }
        }
        
    }
}

// 1/4 * 2/5 * 1/5 * 1/2 = 2/200 = 1/100
