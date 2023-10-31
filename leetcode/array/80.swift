//
//  80.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 29/10/23.
//

import Foundation


func removeDuplicatesMed(_ nums: inout [Int]) -> Int {
    var dict:[Int:Int] = [:]
    for v in nums {
        if(dict.keys.contains(v)){
            if( dict[v]! > 1){
                
            }else {
                dict[v]! += 1
            }
        }else {
            dict[v] = 1
        }
    }

    nums = []
    
    for (k,v) in dict {
      nums += repeatNumber(k, v)
    }
    nums.sort()
    print(nums)
    return nums.count
}
func repeatNumber(_ number: Int, _ count: Int) -> [Int] {
    guard count > 0 else {
        return []
    }

    var result = [Int]()
    for _ in 1...count {
        result.append(number)
    }
    return result
}
