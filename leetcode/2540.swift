//
//  2540.swift
//  leetcode
//
//  Created by Maruf Khan on 9/10/23.
//

import Foundation



func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
    return  Set(nums1).intersection(Set(nums2)).min() ?? -1
}
