//
//  1832.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation


func checkIfPangram(_ sentence: String) -> Bool {
    var alphabetDict: [String: Int] = Dictionary(uniqueKeysWithValues: "abcdefghijklmnopqrstuvwxyz".map { (String($0), 0) })
    var res = false
    sentence.map({String($0)}).forEach { item in
        alphabetDict[item]! += 1
    }
    
    for (_,value) in alphabetDict {
        if(value < 1){
            res = false
            break
        }else {
            res = true
        }
    }
    return res
}
