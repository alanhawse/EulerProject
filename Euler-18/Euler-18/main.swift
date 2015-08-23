//
//  main.swift
//  Euler-18
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

// ugly but it works... there are too many paths by a factor of 2

var data = [[75]]
data.append([95, 64])
data.append([17, 47, 82])
data.append([18, 35, 87, 10])
data.append([20, 04, 82, 47, 65])
data.append([19, 01, 23, 75, 03, 34])
data.append([88, 02, 77, 73, 07, 63, 67])
data.append([99, 65, 04, 28, 06, 16, 70, 92])
data.append([41, 41, 26, 56, 83, 40, 80, 70, 33])
data.append([41, 48, 72, 33, 47, 32, 37, 16, 94, 29])
data.append([53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14])
data.append([70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57])
data.append([91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48])
data.append([63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31])
data.append([04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23])


class Node {
    var val: Int!
    var left: Node?
    var right: Node?
}

var nodes = [[Node]]()


for var i=0;i<data.count;i++ {
    
    var current = [Node]()
    nodes.append(current)
    for  j in 0..<data[i].count {
        var n = Node()
        n.val = data[i][j]
        current.append(n)
        if j < i && i>0 {
            nodes[i-1][j].left = n
        }
        
        if j>0 && i>0 {
            nodes[i-1][j-1].right = n
        }
        
    }
    nodes[i] = current
}

var max = 0

func path(node : Node, sum : Int) {
    if node.left != nil {
        path(node.left!, sum+node.val)
    }
    if node.right != nil {
        path(node.right!,sum+node.val)
    }
    let tot = sum + node.val
    if tot>max {
        max = tot
    }
}

path(nodes[0][0],0)

println("max = \(max)")