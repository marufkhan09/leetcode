//
//  345.swift
//  leetcode
//
//  Created by Maruf Khan on 9/10/23.
//

import Foundation


func reverseVowels(_ s: String) -> String {
    var left = 0
    var right = s.count - 1
    var arr = s.map{String($0)}
    
    
    while left < right{
        if(isVowel(arr[left]) && isVowel(arr[right])){
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
        else if(isVowel(arr[left])){
            right -= 1
            
        } else if(isVowel(arr[right])){
            left += 1
        }
        else {
            left += 1
            right -= 1
        }
    }
    
    return arr.joined()
}

func isVowel(_ str: String) -> Bool {
    let vowels: Set<String> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    return vowels.contains(str)
}
