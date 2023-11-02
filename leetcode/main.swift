////
////  main.swift
////  leetcode
////
////  Created by Maruf Khan on 2/10/23.
////
//
//import Foundation
//
////////////no one  problem paused
//class Solution {
//    var arr: [Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
//
//    func compress(_ chars: inout [Character]) -> Int {
//        var str = ""
//        var i = 0
//        var j = 1
//
//        var tempArr : [String] = []
//
//        while i < chars.count  && j <= chars.count {
//
//            if(i == 0){
//                tempArr.append(String(chars[i]))
//              //  print("array jokhon empty::\(tempArr)")
//                print("i jokhon :\(i)::tokhon j:\(j) ")
//                i += 1
//            }else if(chars[i-1] == chars[i]){
//             //   print("array jokhon empty na but shoman::\(tempArr)")
//                j += 1
//                print("i jokhon :\(i)::tokhon j:\(j) ")
//                i += 1
//                if(i == chars.count && j != 1){
//                    tempArr.append(String(j))
//                }
//
//            }
//            else if(chars[i-1] != chars[i]){
//                tempArr.append(String(j))
//                tempArr.append(String(chars[i]))
//                j = 1
//                print("i jokhon :\(i)::tokhon j:\(j) ")
//                i += 1
//
//            }
//
//        }
//        print("final::\(tempArr)")
//        chars = []
//        print(tempArr.joined(separator: ""))
//
//
//        return tempArr.count
//    }
//
//}
//
//var sol = Solution()
//print(sol.compress(&sol.arr))
//
//
//
//
//
//

////////////no two problem paused
//class Solution {
//    func increasingTriplet(_ nums: [Int]) -> Bool {
//        var i = 0
//        var j = 1
//        var k = 2
//        var res = false
//        if(nums.count < 3){
//            return false
//        }
//        else {
//
//            //[20,100,10,12,5,13]
//            while i < j  && j < k && k < nums.count{
//                if(nums[i] < nums[j] && nums[j] < nums[k]){
//                    res = true
//
//                }else if(nums[i] < nums[j] && nums[j] > nums[k]){
//                    res = false
//                    k += 1
//
//                }else if(nums[i] < nums[j] && nums[j] > nums[k]){
//                    res = false
//                    j += 1
//                    k += 1
//
//                }else if(nums[i] > nums[j]){
//                    res = false
//                    i += 1
//                    j += 1
//                    k += 1
//                }
//
//            }
//            return k >= 3 ? true : false
//        }
//    }
//}
//
//var sol = Solution()
//print(sol.increasingTriplet([20,100,10,12,5,13]))
//    //2,3,5

//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
import Foundation

class Solution {
    //    func decodeString(_ s: String) -> String {
    //
    //        var i = 0
    //        var j = 1
    //        var res = ""
    //        let chArr = Array(s)
    //        //"3[a]2[bc]"
    //        print(chArr)
    //        while i < chArr.count {
    //            var num = ""
    //            var letter  = ""
    //
    //            while j < chArr.count {
    //                if(chArr[i].isNumber){
    //                    num += String(chArr[i])
    //                }
    //            }
    //
    //
    //
    //
    //        }
    //
    //        return ""
    //    }
    
    //    func decodeMessage(_ key: String, _ message: String) -> String {
    //        var dict:[String:String] = [:]
    //        let alphabets = Array("abcdefghijklmnopqrstuvwxyz")
    //        var keyArr = key.map({String($0)})
    //        var msgArr = message.map({String($0)})
    //        var i = 0
    //        var res = ""
    //        var j = 0
    //
    //        for (i,item) in alphabets.enumerated() {
    //            if(dict.isEmpty && !dict.contains(where: {$0.value == String(item)})){
    //                dict[alphabets[i]] = key
    //            }
    //        }
    //
    //        print(dict)
    ////        for (_,value) in msgArr.enumerated() {
    ////            var val = value
    ////            for (k,v) in dict {
    ////                if(k == val){
    ////                    res += v
    ////                }else if(value == " "){
    ////                    if(res.last != " "){
    ////                        res += " "
    ////                    }
    ////                    j += 1
    ////
    ////                }
    ////            }
    ////
    ////        }
    //        return res
    //    }
    //another
    
    //    func reverse(_ x: Int) -> Int {
    //        var temp = ""
    //        var s = String(x).map({String($0)})
    //        if(x <= 0){
    //            s.removeFirst()
    //            temp += "-"
    //            var i = s.count - 1
    //            while i >= 0{
    //                temp  += s[i]
    //                i -= 1
    //            }
    //        }else{
    //            var i = s.count - 1
    //            while i >= 0{
    //                temp  += s[i]
    //                i -= 1
    //            }
    //        }
    //        return Int(temp)!
    //    }
    
    //    func pivotIndex(_ nums: [Int]) -> Int {
    //        var add = 0
    //        nums.forEach { i in
    //            add += i
    //        }
    //        if(add == 0){
    //            return 0
    //        }else{
    //            return 1
    //        }
    //     }
    
    
    //    private let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    //    private let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    
    private let values = [1000,500,100,50,10,5,1]
    private let symbols = ["M","D","C","L","X","V","I"]
    
    //    func intToRoman(_ num: Int) -> String {
    //        var curNum = num
    //        var res = ""
    //
    //            for (i,v) in values.enumerated() where curNum - v >= 0 {
    //                while curNum > 0 {
    //                    curNum -= v
    //                    res += symbols[i]
    //                }
    //            }
    //
    //        return res
    //    }
    
    //paused
    
    //    func romanToInt(_ s: String) -> Int {
    //        var res = 0
    //        var dict : [String: Int] = [:]
    //        var temp = s.map({String($0)})
    //        for (i,v) in symbols.enumerated(){
    //            dict[v] = values[i]
    //        }
    //        var len = dict[temp.first!]
    //        temp.removeFirst()
    //        res  = len!
    //
    //        for (i,v) in dict {
    //            for j in temp {
    //                if(i == j){
    //                    res += v
    //                }
    //            }
    //        }
    //        return res
    //    }
    //  paused
    
    //    func plusOne(_ digits: [Int]) -> [Int] {
    //        var temp = digits.map({String($0)})
    //        var str = temp.joined(separator: "")
    //
    //        var int: Int64 = Int64(str)!
    //        print(int)
    //
    //        return []
    //    }
    // [1,3,5,6]
    //paused
    //    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //
    //        var i = 0
    //        var j = nums.count - 1
    //        var l = 0
    //        var r = 0
    //        var res: [Int] = []
    //        while i <= j {
    //            let mid = i + (j-i) / 2
    //            if(nums[mid] >= target){
    //                j = mid - 1
    //            }else {
    //                r = j
    //                while l < r {
    //                    if(nums[l] + nums[r] == target){
    //                        print("ss")
    //                        res.append(l)
    //                        res.append(r)
    //                      break
    //                    }else if(nums[l] + nums[r] > target){
    //                        r -= 1
    //                        print("SDAA")
    //                    }else if(nums[l] + nums[r] < target){
    //                        l += 1
    //                        print("aaa")
    //                    }
    //                    else {
    //                        print("dhukse")
    //                        l += 1
    //                        r -= 1
    //                    }
    //                }
    //                i = mid + 1
    //            }
    //        }
    //        return res
    //    }
    
    //    func findPairs(_ nums: [Int], _ k: Int) -> Int {
    //        let set = Set(nums)
    //        let nums = Array(set)
    //        var i = 0
    //        var j =  1
    //        var count = 0
    //        while i < j {
    //            while j < nums.count  {
    //
    //                if(abs(nums[i] - nums[j]) == k){
    //                    print("\(nums[i])- \(nums[j]) = \(k)")
    //                    count += 1
    //                    j += 1
    //                }else {
    //                    j += 1
    //                }
    //            }
    //            i += 1
    //            j = 1
    //        }
    //        return count
    //    }
    
    
    //paused
    
    //    func divide(_ dividend: Int, _ divisor: Int) -> Int {
    //        var dividend = dividend
    //        var res = 0
    //        if(dividend < Int.min || dividend > Int.max){
    //            return 0
    //        }
    //        while dividend > divisor {
    //            dividend -= divisor
    //            res += 1
    //        }
    //
    //        print(res)
    //        return res
    //    }
    //    func myPow(_ x: Double, _ n: Int) -> Double {
    //        var n = n
    //        var res: Double = x
    //        while n != 1 {
    //            if(n > 0){
    //                res = res * x
    //                print(res)
    //                n -= 1
    //            }else{
    //                res = res / x
    //                print(res)
    //                n += 1
    //            }
    //        }
    //        return res
    //    }
    //paused
    //    func productExceptSelf(_ nums: [Int]) -> [Int] {
    //        var i = 0
    //        var j = 0
    //        var arr: [Int] = []
    //        return arr
    //    }
    
    
//    func hIndex(_ citations: [Int]) -> Int {
//        var count = 0
//        return count
//    }
    

    
}

var sol = Solution()









