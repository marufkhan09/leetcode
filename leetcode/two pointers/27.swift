//
//  27.swift
//  leetcode
//
//  Created by Maruf Khan on 7/10/23.
//

import Foundation


func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    var j = nums.count
    while i < j {
        if(nums[i] == val){
            nums[i] = nums[j - 1]
            nums.remove(at: j - 1)
            j -= 1
        }
        else {
            i += 1
        }
       
    }
    print(nums)
    return nums.count
}
//Approach
//This pattern is useful for two pointer problems.
//
//while i < j {
//    while i < j && ... {} // seek from left to right until blocked.
//    while i < j && ... {} // seek from right to left until blocked.
//    // Modify the array so that the loops above can continue.
//}
//The two pointer approach is to "seek" from both ends, modifying the array as you go. The inner loops perform the "seek", meaning it finds the next place that needs to be modified. Usually, the modification involves both the left and right seekers.
//
//In the code above, i and j move towards each other from opposite ends of the array. By definition, i will equal j at the end of the while loop.
//
//The key to this approach is to think about what it means as each iterator moves towards the other.
//
//What does it mean as i moves from left to right? What is the state of the left portion of the array? In this case, it means that all the non-deleted elements are packed to the left (but not guaranteed to be in the original order).
//
//And what does it mean as j moves from right to left? In this case, all the deleted elements are stored on the right side of the array.
//
//When the pointers meet, it means all the non-deleted elements are on the left, and the deleted elements are on the right. The actual point where i = j can either be a non-deleted or deleted value.
//
//Think about what it means if the meeting point is one type or the other. In this case, if the meeting point lands on a non-deleted element, it should be counted in the total number of non-deleted elements.
//
//Pitfalls
//Use the same comparison expression i < j in the outer loop as well as the inner "seeking" loops. Without it, the inner loops will go past the meeting point and eventually out-of-bounds.
//The code below the inner-loops is the "unblocking code". It must unblock the inner-loops so i and j can continue to move towards each other. Otherwise, you'll have an infinite loop. In the end, i and j must either meet or cross.
//The devil is in the details. Run a few test cases to see if i and j either cross each other or meet at the same index. This is often the source of a one-off error.
//A null or empty array is usually already handled by the i < j check. But this solution required additional code after the while loop that accessed nums[i] which is invalid.
//Code
//class Solution {
//    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//        if nums.count == 0 {
//            return 0
//        }
//        var i = 0
//        var j = nums.count - 1
//        while i < j {
//            while i < j && nums[i] != val { i += 1 }
//            while i < j && nums[j] == val { j -= 1 }
//            let swap = nums[i]
//            nums[i] = nums[j]
//            nums[j] = swap
//        }
//        if nums[i] == val {
//            return i
//        } else {
//            return i+1
//        }
//    }
//}

