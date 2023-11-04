//
//  509.swift
//  leetcode
//
//  Created by Maruf Khan on 4/11/23.
//

import Foundation


func fib(_ n: Int) -> Int {
    var arr = [Int]()
    if(n == 0){
        return 0
    }else if(n == 1){
        return 1
    }else {
        arr = [0,1]
        var i = 2
        while i <= n {
            arr.append(arr[i-2]+arr[i-1])
            i += 1
        }
        print(arr)
    }
    return arr[n]
}
