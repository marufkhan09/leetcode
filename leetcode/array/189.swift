//
//  189.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 15/10/23.
//

import Foundation


func rotate(_ nums: inout [Int], _ k: Int) {
    let shiftAmount = k % nums.count
    print(shiftAmount)
    print(Array(nums[nums.count - shiftAmount ..< nums.count]))
    print(nums[0 ..< nums.count - shiftAmount])
    nums = Array(nums[nums.count - shiftAmount ..< nums.count] + nums[0 ..< nums.count - shiftAmount])
    
    print(nums)
}
