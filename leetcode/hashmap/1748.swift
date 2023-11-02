//
//  1748.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation


func sumOfUnique(_ nums: [Int]) -> Int {
    var dict:[Int:Int] = [:]
    var sum = 0
    nums.forEach { item in
        if(dict.keys.contains(item)){
            dict[item]! += 1
        }else {
            dict[item] = 1
        }
    }
    for (i,v) in dict {
        if(v == 1){
            sum += i
        }
    }
    return sum
}
