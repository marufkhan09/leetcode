//
//  1913.swift
//  leetcode
//
//  Created by Maruf Khan on 3/10/23.
//

import Foundation

func maxProductDifference(_ nums: [Int]) -> Int {
    var diff = 0
    let maxArr = nums.sorted(by: >).prefix(2)
    let minArr = nums.sorted(by: <).prefix(2)
    diff = (maxArr[0]*maxArr[1]) - (minArr[0]*minArr[1])
    return diff
}

