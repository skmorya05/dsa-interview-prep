/*
 Problem: Trapping Rain Water
 Difficulty: Hard
 Pattern: Two-Pointer
 Leetcode: https://leetcode.com/problems/trapping-rain-water/description/

 Time Complexity: O(n)
 Space Complexity: O(1)
 
 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.
 
 #Example 1:
 Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
 
 #Example 2:
 Input: height = [4,2,0,3,2,5]
 Output: 9
 
*/

func trap(_ height: [Int]) -> Int {
    guard height.count > 2 else {
        return 0
    }
    var left = 0
    var right = height.count - 1

    var leftMax = 0
    var rightMax = 0
    var totalSavedWater = 0

    while (left < right) {
        if height[left] <= height[right] {
            if height[left] > leftMax {
                leftMax = height[left]
            } else {
                totalSavedWater += leftMax - height[left]
            }
            left += 1
        } else {
            if height[right] > rightMax {
                rightMax = height[right]
            } else {
                totalSavedWater += rightMax - height[right]
            }
            right -= 1
        }
    }
    return totalSavedWater
}

let result1 = trap([0,1,0,2,1,0,1,3,2,1,2,1])
print("result1 = \(result1) is equal 6.")

let result2 = trap([4,2,0,3,2,5])
print("result2 = \(result2) is equal 9.")