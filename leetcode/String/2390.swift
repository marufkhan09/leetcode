//
//  2390.swift
//  leetcode
//
//  Created by Maruf Khan on 8/10/23.
//

import Foundation


func removeStars(_ s: String) -> String {
    var str = s.split(separator: "")
    var temp = str
    var arr:[Int] = []
    var l = 0
    var r = 0
   
    for (i,_) in str.enumerated() {
        if(str[i] == "*"){
            arr.append(i)
        }
        for (j,_) in arr.enumerated() {
            print(j)
        }
//            for (j,_) in str.enumerated() {
//
//            }
    }
    
    return ""
}
