//
//  242.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation


    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict1: [String:Int] = [:]
        var dict2: [String:Int] = [:]
        
        for v1 in s.map({String($0)}) {
            if(dict1.keys.contains(v1)){
                dict1[v1]! += 1
            }else {
                dict1[v1] = 1
            }
        }
        for v2 in t.map({String($0)}){
            if(dict2.keys.contains(v2)){
                dict2[v2]! += 1
            }else {
                dict2[v2] = 1
            }
        }
        return dict1 == dict2 ? true : false
    }

