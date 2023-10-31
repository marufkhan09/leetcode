//
//  35.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 23/10/23.
//

import Foundation

//good opportunity to learn O(log(n))
//this is how to search for the index of any number in a sorted array
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var s = 0
    var e = nums.count - 1
    
    if(nums[s] > target){
        return 0
    }
    if(nums[e] < target){
        return nums.count
    }
    
    while s < e {
        var mid = s  + (e - s) / 2
        print("mid\(mid)")
        
        if (nums[mid] < target){
            s = mid + 1
            print("s\(s)")
        }else {
            e = mid
        }
    }
    return s
}
