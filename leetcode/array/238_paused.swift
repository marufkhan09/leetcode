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
