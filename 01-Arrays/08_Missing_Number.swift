/*
Problem: Missing Number
Difficulty: Easy
Pattern: XOR
Leetcode: https://leetcode.com/problems/missing-number/description/

Time Complexity:
Space Complexity:

Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
# Example 1:
    Input: nums = [3,0,1]
    Output: 2
    Explanation:
    n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

# Example 2:
    Input: nums = [0,1]
    Output: 2
    Explanation:
    n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

# Example 3:
    Input: nums = [9,6,4,2,3,5,7,0,1]
    Output: 8
    Explanation:
    n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
*/

func missingNumber(_ nums: [Int]) -> Int {
    var result = 0
    for index in (1...nums.count) {
        result ^= index
    }
    for num in nums {
        result ^= num
    }
    return result
}

let result1 = missingNumber([3,0,1])
print("result1 = \(result1) expected is 2")

let result2 = missingNumber([3,0,1])
print("result2 = \(result2) expected is 2")

let result3 = missingNumber([3,0,1])
print("result3 = \(result3) expected is 8")
