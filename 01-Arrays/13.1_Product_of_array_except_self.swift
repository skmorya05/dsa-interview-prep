/*
Problem: Product of Array Except Self
Difficulty: Medium
Pattern: Brute Force
Leetcode: https://leetcode.com/problems/product-of-array-except-self/description/

Time Complexity: O(n^2)
Space Complexity: O(n)

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
    var result:[Int] = []
    for (i, _) in nums.enumerated() {
        var products: Int = 1
        for j in 0..<nums.count {
            if (i == j) {
                continue
            }
            products = products * nums[j]
        }
        result.append(products)
    }
    return result
}

let result1 = productExceptSelf([1,2,3,4])
print("result1 = \(result1) expected is [24,12,8,6]")

let result2 = productExceptSelf([-1,1,0,-3,3])
print("result2 = \(result2) expected is [0,0,9,0,0]")

//Due to space complexity this solution is not good.
//Need to update