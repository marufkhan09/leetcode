//
//  2529.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 25/10/23.
//

import Foundation


//paused
//2529
//[-2,-1,-1,1,1,2,3]
func maximumCount(_ nums: [Int]) -> Int {
    var i = 0
    var j = nums.count - 1
    var p = 0
    var n = 0
    while i <= j {
      let mid = i + (j - i) / 2
        if(nums[mid] > 0){
            p = mid
            j  = mid - 1
        }else if(nums[mid] < 0){
            n = mid
            i = mid + 1
        }
        else if(nums[mid] == 0){
            i = mid - 1
            j - mid + 1
        }
    }
    return max(i,j)
}
