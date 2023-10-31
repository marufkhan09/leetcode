//
//  9.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 29/10/23.
//

import Foundation


func isPalindrome(_ x: Int) -> Bool {
    
    var temp = reverse(x)
    
    return x == temp ? true : false
}
