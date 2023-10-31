//
//  771.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 22/10/23.
//

import Foundation


func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var dict: [String : Int] =  [:]
    var s = stones.map({String($0)})
    var j = jewels.map({String($0)})
    var res = 0
    s.forEach { item in
        if(dict.isEmpty || !dict.keys.contains(item)){
            dict[item] = 1
        }else {
            dict[item]! += 1
        }
    }
    for item in j {
        for (k,v) in dict {
            if(k == item){
                res += v
            }
        }
    }
    return res
}
