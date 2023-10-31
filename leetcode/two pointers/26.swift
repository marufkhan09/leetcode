//
//  26.swift
//  leetcode
//
//  Created by Maruf Khan on 7/10/23.
//

import Foundation


func removeDuplicates(_ nums: inout [Int]) -> Int {
    var i = 0
    var j = 1
    while i < j && j < nums.count {
        if(nums[i] == nums[j]) {
            nums.remove(at: j)
        }else if(nums[i] < nums[j]){
            i = j
            j += 1
        }
    }
    return nums.count
}
