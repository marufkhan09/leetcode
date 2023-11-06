//
//  1657.swift
//  leetcode
//
//  Created by Maruf Khan on 6/11/23.
//

import Foundation

func closeStrings(_ word1: String, _ word2: String) -> Bool {
    if( word1.count != word2.count){
        return false
    }
    var arr1 = Array(word1)
    var arr2 = Array(word2)
    var dict1 = [Character:Int]()
    var dict2 = [Character:Int]()
    for i in 0..<arr1.count {
        dict1[arr1[i],default: 0] += 1
        dict2[arr2[i],default: 0] += 1
    }
    if(dict1.keys != dict2.keys || dict1.values.sorted() != dict2.values.sorted()){
        return false
    }
    return true
}
