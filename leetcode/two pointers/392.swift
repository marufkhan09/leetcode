//
//  392.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 11/10/23.
//


func isSubsequence(_ s: String, _ t: String) -> Bool {
    var array1 = s.map({String($0)})
    
    var array2 = t.map({String($0)})
    var i = 0
    var j = 0
    var str = ""
    while i < array1.count  && j < array2.count{
        if(array1[i] == array2[j]){
            
            str += array1[i]
            i += 1
            j += 1
        }
        else if(array1[i] != array2[j]){
            j += 1
        }
        
    }
    return str == s ? true : false
    
}
