//
//  283.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 11/10/23.
//

import Foundation


func moveZeroes(_ nums: inout [Int]) {

    var i = 0
    var j = 0
    
    while i <= j  && j < nums.count {
        if(nums[i] == 0 && nums[j] == 0){
            j += 1
        }
        else if(nums[i] == 0 && nums[j] != 0){
            nums.swapAt(i, j)
            i += 1
            j += 1
        }else if(nums[i] != 0 && nums[j] == 0){
            i += 1
            j += 1
        }
        else {
            i += 1
            j += 1
        }
    }
    
    print(nums)
}
