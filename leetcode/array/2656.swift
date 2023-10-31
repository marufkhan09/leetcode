//
//  2656.swift
//  leetcode
//
//  Created by Maruf Khan on 2/10/23.
//

import Foundation

func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
    var sum = 0
    var i = 0
    var maxNum = nums.max()!
    while i < k {
        sum += maxNum
        maxNum += 1
        i += 1
    }
    return sum
}
