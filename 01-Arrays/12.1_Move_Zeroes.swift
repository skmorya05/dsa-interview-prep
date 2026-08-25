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

*/

func moveZeroes(_ nums: inout [Int]) {
    var leftIndex = 0
    var rightIndex = nums.count - 1
    while leftIndex < rightIndex {
        print(leftIndex, rightIndex)
        if nums[leftIndex] == 0 {
            let temp = nums[leftIndex]
            nums[leftIndex] = nums[rightIndex]
            nums[rightIndex] = temp
            
            leftIndex += 1
            rightIndex -= 1
        } else if nums[leftIndex] != 0 {
            leftIndex += 1
        }
    }
}

var array = [0, 1, 2, 3]
moveZeroes(&array)
print("array = \(array)")
//The code will move zeros,
//But it does not correctly solve the standard Move Zeroes problem because it can change the relative order of non-zero elements.
// Loose original order.