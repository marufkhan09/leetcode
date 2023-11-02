//
//  217.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation

    func containsDuplicate(_ nums: [Int]) -> Bool {
        var res = false
        var dict: [Int:Int] = [:]
        for v in nums{
            if(dict.keys.contains(v)){
                dict[v]! += 1
                return true
             
            }else {
                dict[v] = 1
                
            }
        }
        return res
    }

