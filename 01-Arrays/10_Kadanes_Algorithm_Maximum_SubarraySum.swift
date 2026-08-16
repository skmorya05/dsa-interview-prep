/*
 Problem: Maximum Subarray (Kadanes Algoritham)
 Difficulty: Medium
 Pattern: Kadanes Algoritham
 Leetcode: https://leetcode.com/problems/maximum-subarray/description/

 Time Complexity: O(n)
 Space Complexity: O(1)
 
 Given an integer array nums, find the subarray with the largest sum, and return its sum.
 
#Example 1:
 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 
#Example 2:
 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.

#Example 3:
 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
*/

func maxSubArray(_ nums: [Int]) -> Int {
    var currentSum = 0
    var maxSum = 0
    for num in nums {
        currentSum = currentSum + num
        if currentSum > maxSum {
            maxSum = currentSum
        }
        if currentSum < 0 {
            currentSum = 0
        }
    }
    return maxSum
}

let result1 = maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
print("result1 = \(result1) expected is 6")


let result2 = maxSubArray([1])
print("result2 = \(result2) expected is 1")


let result3 = maxSubArray([5,4,-1,7,8])
print("result3 = \(result3) expected is 23")
