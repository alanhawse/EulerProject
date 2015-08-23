//
//  main.swift
//  Euler-15
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

class Node {
    var right: Node?
    var down: Node?
    var row : Int!
    var column : Int!
}

var startTime = NSDate()
println(startTime)

let size = 20

var nodeArray = [[Node]]()
for i in 0...size {
    var ar1 = [Node]()
    for j in 0...size {
        ar1.append(Node())
    }
    nodeArray.append(ar1)
}


for row in 0...size {
    for column in 0...size {
        nodeArray[row][column].row = row
        nodeArray[row][column].column = column
        
        if column < size {
            nodeArray[row][column].right = nodeArray[row][column+1]
        }
        if row < size {
            nodeArray[row][column].down = nodeArray[row+1][column]
        }
    }

}

println("Initialized")


var count = 0
func search(node: Node) {

    if node.right != nil {
        search(node.right!)
    }
    if node.down != nil {
        search(node.down!)
    }
    if node.column == size && node.row == size {
        count = count + 1
    }
    
}

search(nodeArray[0][0])
println("Count = \(count)")

var endTime = NSDate()

println(endTime)

//println(endTime - startTime)

