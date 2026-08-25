/*
Problem: Product of Array Except Self
Difficulty: Medium
Pattern: Compute prefix and suffix products in two passes to avoid division.
Leetcode: https://leetcode.com/problems/product-of-array-except-self/description/

Time Complexity: O(n)
Space Complexity: O(1)

Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:
Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
*/
func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 1, count: nums.count)
    // Left products
    var prefixProducts = 1
    for i in 0..<nums.count {
        result[i] = prefixProducts
        prefixProducts *= nums[i]
    }
    
    // Right products
    var suffixProducts = 1
    for i in stride(from: nums.count - 1, through: 0, by: -1) {
        result[i] *= suffixProducts
        suffixProducts *= nums[i]
    }
    return result
}

let result1 = productExceptSelf([1,2,3,4])
print("result1 = \(result1) expected is [24,12,8,6]")

let result2 = productExceptSelf([-1,1,0,-3,3])
print("result2 = \(result2) expected is [0,0,9,0,0]")
