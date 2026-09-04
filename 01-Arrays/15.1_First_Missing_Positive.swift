/*
 Problem: First Missing Positive
 Difficulty: Hard
 Pattern: Brute Force
 Leetcode: https://leetcode.com/problems/first-missing-positive/

 Time Complexity: O(n)
 Space Complexity: O(1)
 
#Example 1:
Input: nums = [1,2,0]
Output: 3
Explanation: The numbers in the range [1,2] are all in the array.
 
Example 2:
Input: nums = [3,4,-1,1]
Output: 2
Explanation: 1 is in the array but 2 is missing.
 
Example 3:
Input: nums = [7,8,9,11,12]
Output: 1
Explanation: The smallest positive integer 1 is missing.
*/


func firstMissingPositive(_ nums: [Int]) -> Int {
    guard nums.count != 0 else {
        return 1
    }
    var array = Array(1...nums.count)
    //print("array = \(array)")
    for num in nums {
        if num > 0 &&  num <= nums.count {
            array[num-1] = 0
        }
    }
    for num in array {
        if num != 0 {
            return num
        }
    }
    return nums.count+1
}

let result1 = firstMissingPositive([1,2,0])
print("result1: \(result1) expected is 3.")

let result2 = firstMissingPositive([3,4,-1,1])
print("result2: \(result2) expected is 2.")

let result3 = firstMissingPositive([7,8,9,11,12])
print("result3: \(result3) expected is 1.")

let result4 = firstMissingPositive([1])
print("result4: \(result4) expected is 2.")
