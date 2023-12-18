//
//  27.swift
//  leetcode
//
//  Created by Maruf Khan on 3/12/23.
//

import Foundation


func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
    nums.removeAll { item in
        item == val
    }
    return nums.count
}
