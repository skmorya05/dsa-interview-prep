/*
Problem: Two Non-Repeating Numbers
Difficulty: Medium
Pattern: XOR + Bit Manipulation

Time Complexity:
Space Complexity:

Given an integer array nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.
You must write an algorithm that runs in linear runtime complexity and uses only constant extra space.
# Example 1:
    Input: nums = [1,2,1,3,2,5]
    Output: [3,5]
    Explanation:  [5, 3] is also a valid answer.

# Example 2:
    Input: nums = [-1,0]
    Output: [-1,0]

# Example 3:
    Input: nums = [0,1]
    Output: [1,0]

# Constraints:
2 <= nums.length <= 3 * 104
-231 <= nums[i] <= 231 - 1
Each integer in nums will appear twice, only two integers will appear once.
*/

func singleNumber(_ nums: [Int]) -> [Int] {
    // Step 1: XOR all numbers to get (x ^ y)
    var xOrAll = 0
    for num in nums {
        xOrAll ^= num
    }
    
    // Step 2: Isolate the lowest set bit
    // 2's complement = 1's complement(~a) + 1
    // Using & - to find the rightmost 1-bit
    // a = a & a" = a & -a      // ~a + 1 equals the negative version of a number
    let rmsbmask = xOrAll & -xOrAll
    
    // Step 3: Separate numbers into two groups
    var x  = 0, y = 0
    for num in nums {
        if (num & rmsbmask) != 0 {
            x = x ^ num
        } else {
            y = y ^ num
        }
    }
    
    return [x, y]
}

let result1 = singleNumber([1,2,1,3,2,5])
print("result1 = \(result1) expected is [3,5]")

let result2 = singleNumber([-1,0])
print("result2 = \(result2) expected is [-1,0]")

let result3 = singleNumber([0,1])
print("result3 = \(result3) expected is [0,1]")
