//
//  1347.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 22/10/23.
//

import Foundation


func minSteps(_ s: String, _ t: String) -> Int {
    var s = s.map({String($0)})
    var t = t.map({String($0)})
    var dict : [String: Int] = [:]
    var res = 0
    s.forEach { str in
        if(dict.isEmpty || !dict.keys.contains(str)){
            dict[str] = 1
        }else {
            dict[str]! += 1
        }
    }
    t.forEach { str in
        if(dict.keys.contains(str)){
            dict[str]! -= 1
        }else {
        }
    }
    
    dict.values.forEach { item in
        if(item > 0){
            res += item
        }
    }
    
    return res
}
