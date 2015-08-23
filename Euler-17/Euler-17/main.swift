//
//  main.swift
//  Euler-17
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

func ones(val : Int) -> String {
    
    let digits = val-(val/10)*10
    
    switch digits {
    case 1:
        return "one"
    case 2:
        return "two"
    case 3:
        return "three"
    case 4:
        return "four"
    case 5:
        return "five"
    case 6:
        return "six"
    case 7:
        return "seven"
    case 8:
        return "eight"
    case 9:
        return "nine"
    default:
        return ""
        
    }

}

func teens(var val: Int) -> String {
    
    let digits = val-(val/100)*100
    
    switch digits {
    case 10:
        return "ten"
    case 11:
        return "eleven"
    case 12:
        return "twelve"
    case 13:
        return "thirteen"
    case 14:
        return "fourteen"
    case 15:
        return "fifteen"
    case 16:
        return "sixteen"
    case 17:
        return "seventeen"
    case 18:
        return "eighteen"
    case 19:
        return "nineteen"
    default:
        return ""
    }
}

func tens(val: Int) -> String
{

    let digits = val-(val/100)*100
    
    if digits < 20 {
        return teens(val)
    }
    if digits<30 {
        return "twenty"
    }
    if digits<40 {
        return "thirty"
    }
    if digits<50 {
        return "forty"
    }
    if digits<60 {
        return "fifty"
    }
    if digits<70 {
        return "sixty"
    }
    if digits<80 {
        return "seventy"
    }
    if digits<90 {
        return "eighty"
    }
    return "ninety"
    
    
}

func hundreds(val: Int) -> String {
    if val < 100
    {
        return ""
    }
    if val < 200
    {
        return "onehundredand"
    }
    
    if val < 300
    {
        return "twohundredand"
    }
    
    if val < 400
    {
        return "threehundredand"
    }

    if val < 500
    {
        return "fourhundredand"
    }
    
    if val < 600
    {
        return "fivehundredand"
    }
    
    if val < 700
    {
        return "sixhundredand"
    }
    
    if val < 800
    {
        return "sevenhundredand"
    }
    
    if val < 900
    {
        return "eighthundredand"
    }
    
    if val < 1000
    {
        return "ninehundredand"
    }
    
    return "onethousand"
    
}

func val(val : Int) -> String {
    
    var digits = (val/10)*10
    digits = digits-(digits/100)*100

    if digits == 10 {
            return hundreds(val) + teens(val)
    }
    
    return hundreds(val) + tens(val)  + ones(val)
}

var count = 0
for var i=0;i<1001;i++ {
    var rval = val(i) as NSString
 //   println("rval=\(rval) length=\(rval.length)")
    count = count + rval.length
    
}

count = count - 9*3

println("Count = \(count)")

