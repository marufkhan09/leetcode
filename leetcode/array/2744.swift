//
//  2744.swift
//  leetcode
//
//  Created by Maruf Khan on 4/10/23.
//

import Foundation


func maximumNumberOfStringPairs(_ words: [String]) -> Int {
    var myArray = [[String]]()
    words.forEach { item in
        var arrayOfLetters = item.map({String($0)})
        myArray.append(arrayOfLetters.sorted(by: >))
    }

    return  myArray.count - Set(myArray).count
}
