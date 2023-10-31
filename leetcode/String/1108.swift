//
//  1108.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 16/10/23.
//

import Foundation


func defangIPaddr(_ address: String) -> String {
    var i = 0
    var temp = address.map({String($0)})
    print(temp)
    var arr :[String] = []
    while i < temp.count {
        if(temp[i] != "."){
            arr.append(temp[i])
        }else {
            arr.append("[")
            arr.append(temp[i])
            arr.append("]")
        }
        
        i += 1
    }
    print(arr.joined())
    return  ""
}
