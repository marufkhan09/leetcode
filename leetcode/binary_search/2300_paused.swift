//
//  2300_paused.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 26/10/23.
//

import Foundation


func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
    var temparr : [Int] = []
    spells.forEach { item in
        temparr.append(greaterElements(arrInt: potions, mul: item, target: success))
    }
    return temparr
}

private func greaterElements(arrInt: [Int],mul: Int,target : Int) -> Int {
    let  temp  = arrInt.map({Int($0 * mul)})
    var sortArr = temp.sorted()
    var i = 0
    var j = sortArr.count - 1
    var res = 0
    while i <= j {
        let mid = i + (j-i) / 2

        if(sortArr[mid] >= target){
            print(sortArr[mid])
            res = sortArr.count - mid
            j = mid - 1
        }else{
           i = mid + 1
        }
    }
    return res
}
