//
//  main.swift
//  Euler-32
//
//  Created by Alan Hawse on 8/22/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

/*
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

*/

// this ignore 1 and itself because this cant happen with this problem
func factors(f : Int) -> [Int]
{
    var rval = [Int]()
    for var i=2;i<=f/2;i++ {
        if f%i == 0 {
            rval.append(i)
        }
    }
    
    return rval
}


func digits(var num : Int, var status : [Bool]) -> (Bool, [Bool])
{
    var fail = false
    do {
        let d = num % 10
        if status[d] == true {
            fail = true
            break
        }
        status[d] = true
        num = num / 10
    } while num != 0
    
    return (fail,status)
}

func swap(var s: [Int], a : Int, b : Int) -> [Int]
{
    var temp=s[a]
    s[a] = s[b]
    s[b] = temp
    return s
}


func permute(var str : [Int]) -> (Bool,[Int])
{
    var len = str.count
    var key = len-1
    var newkey = len-1
    
    /* The key value is the first value from the end which
    is smaller than the value to its immediate right        */
    
    while( (key > 0) && (str[key] <= str[key-1]) )
    {
        key--
    }
    key--
    
    /* If key < 0 the data is in reverse sorted order,
    which is the last permutation.                          */
    
    if( key < 0 )
    {
        return (false,str)
    }
    
    /* str[key+1] is greater than str[key] because of how key
    was found. If no other is greater, str[key+1] is used   */
    
    newkey=len-1;
    while( (newkey > key) && (str[newkey] <= str[key]) )
    {
        newkey--
    }
    
    str = swap(str, key, newkey)
    
    /* variables len and key are used to walk through the tail,
    exchanging pairs from both ends of the tail.  len and
    key are reused to save memory                           */
    
    len = len - 1
    key++
    
    /* The tail must end in sorted order to produce the
    next permutation.                                       */
    
    while len>key
    {
        str = swap(str,len,key)
        key++
        len = len - 1
    }
    
    return (true,str)
}

/*
var test  = [1,2,3]

/* A short test loop to print each permutation, which are
created in sorted order.                                */

var rval=(true,[1])
do  {
    println(test)
    rval = permute(test)
    test = rval.1
    
}
while rval.0
*/

var status = [Bool]()
// dont try to factor them all... only try the ones that might work

let max = 123456789
var count = 0
for var i=1000;i<max;i++
{
    status = [Bool](count:10, repeatedValue: false)
    var rval = digits(i,status)
    if rval.0 == false {
        
        //count = count + factors(i).count
    }
}
println(count)
*/