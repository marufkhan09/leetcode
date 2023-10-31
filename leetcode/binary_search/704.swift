//
//  704.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 25/10/23.
//

import Foundation


func search(_ nums: [Int], _ target: Int) -> Int {
    var i = 0
    var j = nums.count - 1
    var res = -1
    while i <= j {
        let mid = (i + j) / 2
        if(nums[mid] < target){
            i = mid + 1
        }
        else if(nums[mid] > target){
            j = mid - 1
        }
        else if(nums[mid] == target){
            res = mid
            break
        }
    }
    return res
}
