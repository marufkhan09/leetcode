//
//  151.swift
//  leetcode
//
//  Created by Maruf Khan on 11/10/23.
//


func reverseWords(_ s: String) -> String {
    var tempArrray  = Array(s.split(separator: " "))
    return tempArrray.reversed().joined(separator: " ")
}
    

