//
//  1414.swift
//  leetcode
//
//  Created by Maruf Khan on 5/11/23.
//

import Foundation


func findMinFibonacciNumbers(_ k: Int) -> Int {
    var arr = [1,1]
    
    while arr[arr.count - 1] < k {
        arr.append(arr[arr.count - 1] + arr[arr.count - 2])
    }
    var j = arr.count - 1
    var sum = 0
    var res = 0
    
    while sum != k {
        if(sum + arr[j] <= k){
            sum += arr[j]
            res += 1
        }
        j -= 1
    }
    print("RES::::\(res)")
    return res
}
