//
//  1071.swift
//  leetcode
//
//  Created by Maruf Khan on 18/12/23.
//

import Foundation


func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    
    if(str2.count > str1.count){
     return   gcdOfStrings(str2, str1)
    }
    
    if(str2 == str1){
        return str1
    }
    
    if(str1.starts(with: str2)){
        return gcdOfStrings(String(str1.dropFirst(str2.count)), str2)
    }
    return ""
}
