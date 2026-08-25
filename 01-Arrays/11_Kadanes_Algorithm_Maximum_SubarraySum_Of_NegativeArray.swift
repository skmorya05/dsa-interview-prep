/*
Problem: Maximum Subarray (Kadanes Algoritham)
Difficulty: Medium
Pattern: Kadanes Algoritham
Leetcode: https://leetcode.com/problems/maximum-subarray/description/

Time Complexity: O(n)
Space Complexity: O(1)

Given an integer array nums, find the subarray with the largest sum, and return its sum.

#Example 1:
Input: nums = [-2,-3,-1,-5,-8,-4]
Output: -1
Explanation: The subarray [-1] has the largest sum -1.

#Example 2:
Input: nums = [-1,-3,-3,-2,-1]
Output: -1
Explanation: The subarray [-1] has the largest sum -1.
*/

func maxSubArray(_ nums: [Int]) -> Int {
    guard let first = nums.first else {
        return 0
    }
    var currentSum = first
    var maxSum = first
    for i in 1..<nums.count {
        if currentSum + nums[i] > nums[i] {
            currentSum = currentSum + nums[i]
        } else {
            currentSum = nums[i]
        }
        if currentSum > maxSum {
            maxSum = currentSum
        }
    }
    return maxSum
}

let result1 = maxSubArray([-2,-3,-1,-5,-8,-4])
print("result1 = \(result1) expected is -1")

let result2 = maxSubArray([-1,-3,-3,-2,-1])
print("result2 = \(result2) expected is -1")

