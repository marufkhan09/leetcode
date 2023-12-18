//
//  443.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 12/10/23.
//

import Foundation


func compress(_ chars: inout [Character]) -> Int {
    var start = 0
    var end = 0
    var temp = [String]()
    while end < chars.count {
        if(chars[start] == chars[end]){
            
            if(end == chars.count - 1){
                temp.append(String(chars[start]))
                if(start != end){
                    temp.append(String(1+(end-start)))
                }
            }
            end += 1
        }else if(chars[start] != chars[end]){
            if(start != end){
                temp.append(String(chars[start]))
                if(end-start != 1){
                    temp.append(String(end-start))
                }
                
                start = end
            }else {
                temp.append(String(chars[start]))
                end += 1
                
            }
        }
        
    }
    chars = temp.joined().map({Character(extendedGraphemeClusterLiteral: $0)})
    return chars.count
}

