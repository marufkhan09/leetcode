//
//  7.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 29/10/23.
//

import Foundation


func reverse(_ x: Int) -> Int {
    var x = x
    var sum  = 0
    var rem = 0
    
    while x != 0 {
        rem = x % 10
        sum  = (sum * 10) + rem
        x /= 10
    }
    
    return sum < Int32.min || Int32.max < sum ? 0 : sum
}
