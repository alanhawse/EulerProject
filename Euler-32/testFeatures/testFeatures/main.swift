//
//  main.swift
//  testFeatures
//
//  Created by Alan Hawse on 10/11/15.
//  Copyright (c) 2015 Alan Hawse. All rights reserved.
//

import Foundation

print("Hello, World!")

enum TestError: ErrorType {
    case Type1
    case Type2
}

func t1(x: Int?) throws  {
    

    guard let b=x else {
        print("Error")
        throw TestError.Type2
    }
    var d : Int?
    d=b
    print(d)
    print(b)

}

do {
    
    try t1(nil)
}
catch TestError.Type1 {
    print("Type 1")
}
catch TestError.Type2 {
    print("Type 2")
}

