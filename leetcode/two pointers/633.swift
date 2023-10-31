//
//  633.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 28/10/23.
//

import Foundation


func judgeSquareSum(_ c: Int) -> Bool {

    let a = Int(sqrt(Double(c)))
    var arr = [Int]()
    var i = 0
    while  i <= a {
        arr.append(i)
        i += 1
    }
    var j = 0
    var k = arr.count - 1
    var res = false
    while j <= k {
        let aSq = (arr[j] * arr[j])
        let bSq = (arr[k] * arr[k])
        if(aSq + bSq  == c){
            res = true
            break
        }else if(aSq + bSq  > c){
            k -= 1
        }else if(aSq + bSq  < c){
            j += 1
        }
    }
    return res
}
