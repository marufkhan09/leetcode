//
//  1295.swift
//  leetcode
//
//  Created by Maruf Khan on 3/10/23.
//

import Foundation

func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    for item in nums {
        var temp = String(item).map({String($0)})
        if(temp.count % 2 == 0){
            count += 1
        }
    }
    
    return count
}
