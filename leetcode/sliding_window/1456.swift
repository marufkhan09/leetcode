//
//  1456.swift
//  leetcode
//
//  Created by Maruf Khan on 18/12/23.
//

import Foundation


func maxVowels(_ s: String, _ k: Int) -> Int {
    let vowels: Set<Character> = Set("aeiou")
    var maxCount = 0
    var currentCount = 0
    let chars = Array(s)
    for i in 0..<k {
        if vowels.contains(chars[i]) {
            currentCount += 1
        }
    }
    maxCount = currentCount
    for i in k..<s.count {
        if(vowels.contains(chars[i])){
            currentCount += 1
        }
        if(vowels.contains(chars[i-k])){
            currentCount -= 1
        }
        maxCount = max(maxCount, currentCount)
    }
    return maxCount
}
