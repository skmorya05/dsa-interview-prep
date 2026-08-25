/*
 Problem: Move Zeros
 Difficulty: Easy
 Pattern: Two-pointer
 Leetcode: https://leetcode.com/problems/move-zeroes/

 Time Complexity: O(n)
 Space Complexity: O(1)

Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
Note that you must do this in-place without making a copy of the array.

#Example 1:
Input: nums = [0, 1, 2, 3]
Output: [1, 2, 3, 0]

#Example 2:
Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]

#Example 3:
Input: nums = [0]
Output: [0]
*/

func moveZeroes(_ nums: inout [Int]) {
    var leftIndex = 0
    for rightIndex in 0..<nums.count {
        if nums[rightIndex] != 0 {
            let temp = nums[leftIndex]
            nums[leftIndex] = nums[rightIndex]
            nums[rightIndex] = temp
            leftIndex += 1
        }
    }
}

var array1 = [0, 1, 2, 3]
moveZeroes(&array1)
print("array1 = \(array1)")

var array2 = [0,1,0,3,12]
moveZeroes(&array2)
print("array2 = \(array2)")

var array3 = [0]
moveZeroes(&array3)
print("array3 = \(array3)")
