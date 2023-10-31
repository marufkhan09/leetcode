//
//  34.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 25/10/23.
//

import Foundation


func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    let f = firtsOccurance(nums, target)
    let l = lastOccurance(nums, target)
    return [f,l]
}

func firtsOccurance(_ nums: [Int], _ target: Int)-> Int{
    var i = 0
    var j = nums.count - 1
  var  res = -1
    while i <= j {
        let mid = i + (j - i) / 2
        if(nums[mid] == target){
            res = mid
            j = mid - 1
        }else if(nums[mid] < target){
            i = mid + 1
        }else if(nums[mid] > target){
            j = mid - 1
        }
    }
    return res
}

func lastOccurance(_ nums: [Int], _ target: Int)-> Int{
    var i = 0
    var j = nums.count - 1
  var  res = -1
    while i <= j {
        let mid = i + (j - i) / 2
        if(nums[mid] == target){
            res = mid
            i = mid + 1
        }else if(nums[mid] < target){
            i = mid + 1
        }else if(nums[mid] > target){
            j = mid - 1
        }
    }
    return res
}
