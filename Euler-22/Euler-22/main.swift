//
//  main.swift
//  Euler-22
//
//  Created by Alan Hawse on 8/16/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

/*
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
*/

let fileContent = NSString(contentsOfFile: "/Users/arh/Documents/EulerProject/p022_names.txt", encoding: NSUTF8StringEncoding, error: nil)


var start = 1
var end = 2

var data = [(String,Int)]()

while end < fileContent!.length-3 {
    var str = fileContent?.substringWithRange(NSRange(location:end, length:3))
    if str == "\",\"" {
        let name = fileContent?.substringWithRange(NSRange(location:start, length: end-start))
    
        let array = name!.utf8
        var sum=0
        for i in array {
            let val = i - 64
            sum = sum + Int(val)
        }
        data.append((name!,sum))

        
        start = end + 3
        end = start + 1
    }
    else
    {
        end = end + 1
    }
}
data.sort({$0.0 <= $1.0})

var sum=0
for var i=0;i<data.count;i++ {
        println("\(data[i].0),\(data[i].1),\(i+1)")
        sum += (data[i].1 * (i+1))
}

println("sum = \(sum)")
