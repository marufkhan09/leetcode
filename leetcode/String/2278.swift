//
//  2278.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 22/10/23.
//

import Foundation


func percentageLetter(_ s: String, _ letter: Character) -> Int {
   var s = s.map({String($0)})
    var count = 0
    s.forEach { str in
        if(str == String(letter)){
            count += 1
        }
    }
    var res = (Double(count)) / (Double(s.count))
         
    return Int(res * 100)
}
