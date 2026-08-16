/*
Problem: Single Element in a Sorted Array
Difficulty: Medium
Pattern: XOR Cancellation
Leetcode: https://leetcode.com/problems/single-element-in-a-sorted-array/description/

Time Complexity: O(N)
Space Complexity: O(1)

You are given a sorted array consisting of only integers where every element appears exactly twice, except for one element which appears exactly once.
Return the single element that appears only once.
Your solution must run in O(log n) time and O(1) space.

# Example 1:
    Input: nums = [1,1,2,3,3,4,4,8,8]
    Output: 2

# Example 2:
    Input: nums = [3,3,7,7,10,11,11]
    Output: 10
*/

func singleNonDuplicate(_ nums: [Int]) -> Int {
    // The ^ operator represents bitwise XOR in Swift
    return nums.reduce(0, ^)
}

let result1 = singleNonDuplicate([1,1,2,3,3,4,4,8,8])
print("result1 = \(result1) expected is 2")

let result2 = singleNonDuplicate([3,3,7,7,10,11,11])
print("result2 = \(result2) expected is 10")
