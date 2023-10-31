//
//  1207.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 11/10/23.
//

import Foundation


func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict:[Int:Int] = [:]
    for item in arr {
        if(!dict.keys.contains(item)){
            dict[item] = 1
        }else {
            dict[item]! += 1
        }
    }
    var set: Set<Int> = []
    set = Set(dict.values)
    return dict.count != set.count ? false : true
}
