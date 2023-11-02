//
//  1436.swift
//  leetcode
//
//  Created by Maruf Khan on 2/11/23.
//

import Foundation

func destCity(_ paths: [[String]]) -> String {

    var start:[String] = []
    var end:[String] = []
    paths.forEach { item in
        start.append(item.first!)
        end.append(item.last!)
    }
    let setstart = Set(start)
    let setend = Set(end)
    var a = setend.subtracting(setstart)
    
    return a.first!
    
}
