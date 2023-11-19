//
//  238.swift
//  leetcode
//
//  Created by Maruf's Macbook Pro on 11/10/23.
//



func productExceptSelf(_ nums: [Int]) -> [Int] {
    var res: [Int] = Array(repeating: 1, count: nums.count)
    // print("BEFORE::\(res)")
    var pro = 1
    for i in 1..<nums.count{
        pro *= nums[i-1]
        res[i] *= pro
        //      print("res[\(i)]::::\(res[i])")
    }
    print("RESULT::\(res)")
    print("Main::\(nums)")
    
    var  pro2 = 1//4//3//24//24
    for i in (0..<nums.count - 1).reversed() {
        print("\(pro2)*\(nums[i+1])")
        pro2 *= nums[i + 1]
        print("RES::\(pro2)")
        res[i] *= pro2
    }
    
    //  print("END RESULT::\(res)")
    
    return res
}
func productExceptSelf2(_ nums: [Int]) -> [Int] {
    var prefix = Array(repeating: 1, count: nums.count)
    var suffix = Array(repeating: 1, count: nums.count)
    var result = Array(repeating: 0, count: nums.count)

    for i in 1 ..< nums.count {
        prefix[i] = prefix[i - 1] * nums[i - 1]
    }
    print("prefix\(prefix)")

    for i in (0 ..< nums.count - 1).reversed() {
        suffix[i] = suffix[i + 1] * nums[i + 1]
    }
    print("suffix\(suffix)")

    for i in 0 ..< result.count {
        result[i] = prefix[i] * suffix[i]
    }

    return result
}
