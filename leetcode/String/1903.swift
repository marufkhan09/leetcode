//
//  1903.swift
//  leetcode
//
//  Created by Maruf Khan on 10/12/23.
//

import Foundation

func largestOddNumber(_ num: String) -> String {
    let arr = num.map({String($0)})
    var end = arr.count - 1
    var lastNum:Int = Int(arr[end])!
    var res = ""
    
    if(lastNum % 2 != 0){
        return num
    }
    else {
        while end >= 0 {
            lastNum = Int(arr[end])!
            if(lastNum % 2 != 0){
                res = String(num.prefix(end+1))
                break
            }
            end -= 1
        }
    }
    return res
}
