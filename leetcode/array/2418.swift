//
//  2418.swift
//  leetcode
//
//  Created by Maruf Khan on 3/10/23.
//

import Foundation


func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    var tempArr : [String]  = []
    var dict : [Int: String] =  [:]
    for (i,_) in heights.enumerated() {
        dict[heights[i]] = names[i]
    }
    var sortedKeys = Array(dict.keys).sorted(by: >)
    for  i in sortedKeys {
        tempArr.append(dict[i]!)
    }

    return tempArr
 }

