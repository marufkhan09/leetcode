//
//  2089.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 26/10/23.
//

import Foundation

func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
    let nums = nums.sorted()
    let f = firtsOccurance(nums, target)
    let l = lastOccurance(nums, target)
    return f != l ? Array(f...l) : f == -1 ? [] : [f]
}
