//
//  1859.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation


func sortSentence(_ s: String) -> String {
    let arr = s.split(separator: " ")
    var arr2 = [String](repeating: "", count: arr.count)
    var temp: [Int] = []
    for item in arr {
        temp.append(Int(item.suffix(1))!)
    }
    
    for (i,v) in temp.enumerated() {
        var index = v - 1
        print(index)
        arr2[index] = String(arr[Int(i)].dropLast())
    }
    return arr2.joined(separator: " ")
}
