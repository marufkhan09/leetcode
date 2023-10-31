//
//  2176.swift
//  leetcode
//
//  Created by Maruf Khan on 3/10/23.
//

import Foundation

func countPairs(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    for(i,_) in nums.enumerated() {
        for(j,_) in nums.enumerated(){
            
            if(nums[i] == nums[j] && i < j && ((i * j) % k == 0)){
                count += 1
                
            }
        }
    }
    return count
}
