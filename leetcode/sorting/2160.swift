//
//  2160.swift
//  leetcode
//
//  Created by Maruf Khan on 19/11/23.
//

import Foundation

func minimumSum(_ num: Int) -> Int {
    var num = num
    var arr = [Int]()
   var sum = 0
    
    while num != 0 {
        let digit = num % 10
        arr.append(digit)
        num /= 10
    }
    for (i,v) in arr.sorted().enumerated() {
        if(i == 0 || i == 1){
            sum += 10 * v
        }else {
            sum += v
        }
    }
    return sum
}
