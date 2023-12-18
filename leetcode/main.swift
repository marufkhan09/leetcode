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


////////////no two problem paused
//class Solution {

//}
//
//var sol = Solution()
//print(sol.increasingTriplet([20,100,10,12,5,13]))
//    //2,3,5

//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
import Foundation

class Solution {
    func decodeString(_ s: String) -> String {
        
        var i = 0
        var j = 1
        var res = ""
        let chArr = Array(s)
        //"3[a]2[bc]"
        print(chArr)
        while i < chArr.count {
            var num = ""
            var letter  = ""
            
            while j < chArr.count {
                if(chArr[i].isNumber){
                    num += String(chArr[i])
                }
            }
            
            
            
            
        }
        
        return ""
    }
    
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
    //paused
    //    func findAnagrams(_ s: String, _ p: String) -> [Int] {
    //    var i = 0
    //        var j = p.count
    //        var arr:[Int] = []
    //
    //        while i < j && j <= s.count {
    //            let startIndex = s.index(s.startIndex, offsetBy: i )
    //            let endIndex = s.index(s.startIndex, offsetBy: j )
    //            let mySubstring  = s[startIndex..<endIndex]
    //            print(mySubstring)
    //            if(isAnagram(String(mySubstring), p)){
    //                arr.append(i)
    //            }
    //            i += 1
    //            j = i + p.count
    //        }
    //
    //        return arr
    //    }
    
    //    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
    //
    //
    //
    //
    //        return res
    //    }
    
    //    func maxArea(_ height: [Int]) -> Int {
    //        var i = 0
    //        var j = height.count - 1
    //        var temp : [Int] = []
    //        var temp2 : [Int] = []
    //
    //        while i < j {
    //            if(height[i] > height[j]){
    //                temp.append(height[j] * height[j])
    //                temp2.append(height[j] * height[j] * (j - i))
    //                j -= 1
    //            }else {
    //                temp.append(height[i] * height[i])
    //                temp2.append(height[i] * height[i] * (j - i))
    //                i += 1
    //            }
    //
    //        }
    //        return temp[temp2.firstIndex(of:  temp2.max()!)!]
    //    }
    
    
    func deleteGreatestValue(_ grid: [[Int]]) -> Int {
        var mat = grid
        var sum = 0
        var temp:[[Int]] = []
        for i in 0..<mat.count {
            mat[i].sort(by: >)
        }
        for i in grid {
            temp.append(i.sorted(by: >))
        }
        for i in 0..<temp[0].count {
            var arr = [Int]()
            for j in 0..<temp.count {
                arr.append(temp[j][i])
            }
            sum += arr.max()!
            
        }
        return sum
    }
    
    
    //    func transpose(_ matrix: [[Int]]) -> [[Int]] {
    //        var temp:[[Int]] = []
    //        for i in 0..<matrix[0].count{
    //            var arr = [Int]()
    //            for j in 0..<matrix[i].count {
    //                print(matrix[j][i])
    //                arr.append(matrix[j][i])
    //            }
    //            temp.append(arr)
    //        }
    //        return temp
    //    }
    
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0
        var maxAvg = Double(Int.min)
        var i = 0
        
        for j in 0..<nums.count {
            sum += nums[j]
            if j >= k - 1 {
                print("for \(j+1) Sum before::\(sum)")
                let average = Double(sum) / Double(k)
                maxAvg = max(maxAvg, average)
                sum  -= nums[i]
                print("for \(j+1) Sum after::\(sum)")
                i += 1
            }
        }
        
        return maxAvg
    }
    
    func maximumSubarraySum(_ nums: [Int], _ k: Int) -> Int {
        var maxSum = 0
        var i = 0
        var sum = 0
        var j = 0
        while j < nums.count  {
            let subArray = Array(nums[0..<j])
            if(!subArray.contains(nums[j])){
                sum += nums[j]
                if j >= k - 1  {
                    print("for \(j+1) Sum before::\(sum)")
                    maxSum = max(maxSum, sum)
                    sum  -= nums[i]
                    print("for \(j+1) Sum after::\(sum)")
                    i += 1
                }
            }
            
            j += 1
        }
        return maxSum
    }
    
    
    
    func majorityElement(_ nums: [Int]) -> Int {
        
        var dict = [Int:Int]()
        
        nums.forEach { item in
            dict[item,default: 0] += 1
        }
        let sortedTuples = dict.sorted { $0.value > $1.value }
        let sortedDict = Dictionary(uniqueKeysWithValues: sortedTuples)
        
        return sortedDict.first!.key
    }
    
    //paused...
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var i = 0
        var j = nums.count - 1
        while i < j {
            if(nums[i] + nums[j] == k){
                count += 1
                j -= 1
                i += 1
            }
            else if( nums[i] + nums[j] > k && nums[i] > nums[j]) {
                i += 1
            }
            else if( nums[i] + nums[j] > k && nums[i] < nums[j]) {
                j -= 1
            }
            else if( nums[i] + nums[j] < k && nums[i] < nums[j]) {
                i += 1
            }else if( nums[i] + nums[j] < k && nums[i] > nums[j]) {
                j -= 1
            }
            else {
                i += 1
                j -= 1
            }
        }
        return count
    }
    
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var i = 0
        var j = 0
        var nums = nums
        var temp = k
        var len = 0
        //[1,1,1,0,0,0,1,1,1,1,0]
        
        while j < nums.count {
            if(nums[i] == 1 && nums[j] == 1){
                j += 1
            }else {
                
                if(nums[j] == 0 && temp != 0){
                    nums[j] = 1
                    temp -= 1
                    i = j
                    j += 1
                    len = j
                    
                }else if(nums[j] == 0 && temp == 0) {
                    temp = k
                    
                }
                else {
                    break
                }
            }
        }
        
        return len
    }
    
    
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var temp : [[Int]] = []
        
        for i in 0..<matrix[0].count {
            var arr : [Int] = []
            for j in 0..<matrix[i].count {
                arr.append(matrix[j][i])
            }
            temp.append(arr)
        }
        return temp
    }
    
    func maxOperations(_ x: Int) -> Int {
        var temp = ""
        var s = String(x).map({String($0)})
        if(x <= 0){
            s.removeFirst()
            temp += "-"
            var i = s.count - 1
            while i >= 0{
                temp  += s[i]
                i -= 1
            }
        }else{
            var i = s.count - 1
            while i >= 0{
                temp  += s[i]
                i -= 1
            }
        }
        return Int(temp)!
    }
    
    
    
    
    func missingNumber(_ nums: [Int]) -> Int {
        
        
        return 0
    }
    
    func insertionSort(_ array: inout [Int]) {
        guard array.count > 1 else {
            return
        }
        
        for i in 1..<array.count {
            let key = array[i]
            print(key)
            var j = i - 1
            
            while j >= 0 && array[j] > key {
                array[j + 1] = array[j]
                j -= 1
            }
            
            array[j + 1] = key
        }
        print(array)
    }
    
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var res = [Int]()
        var i = 0
        var j = 1
        while i < j && j < nums.count {
            if(nums[i] < nums[j]){
                if(res.count == 0){
                    res.append(nums[i])
                }
                
                if(res.last! < nums[i]) {
                    res.append(nums[i])
                }else if(res.last! >= nums[i]){
                    res.removeLast()
                    res.append(nums[i])
                }
                i += 1
                j += 1
            }else if(nums[i] > nums[j]){
                i += 1
                j += 1
            }
            else {
                print("ELSE")
            }
            print(res)
        }
        
        return false
    }
    

    
}

var sol = Solution()









