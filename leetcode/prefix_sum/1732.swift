//
//  1732.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 13/10/23.
//

import Foundation


func largestAltitude(_ gain: [Int]) -> Int {
    var temparray : [Int] = [0]
    var i = 0
    var prevVal = 0
    
    while i < gain.count {
        prevVal = temparray[i]
        temparray.append(prevVal + gain[i])
        i += 1
    }
    print(temparray)
    
    
    return temparray.max()!
}
