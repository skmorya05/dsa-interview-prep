/*
Problem: Three Sum
Difficulty: Medium
Pattern: Two Pointers, Duplicate Skipping

Time Complexity: O(n)
Space Complexity: O(n)

Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]

Input: nums = [0,1,1]
Output: []

Input: nums = [0,0,0]
Output: [[0,0,0]]
*/

func threeSum(_ nums: [Int]) -> [[Int]] {
    let sortedArr = nums.sorted() //[-4, -1, -1, 0, 1, 2]
    var resultArr = [[Int]]()
    for (index, item) in sortedArr.enumerated() {
        var left = index + 1
        var right = sortedArr.count - 1
        if (index > 0 && sortedArr[index] == sortedArr[index - 1]) {
            continue
        }
        while (left < right) {
            if (right < sortedArr.count - 1 && sortedArr[right] == sortedArr[right + 1]) {
                right -= 1
                continue
            }
            if ((item + sortedArr[left] + sortedArr[right]) > 0) {
                right -= 1
            } else if ((item + sortedArr[left] + sortedArr[right]) < 0) {
                left += 1
            } else {
                var arr = [Int]()
                arr.append(item)
                arr.append(sortedArr[left])
                arr.append(sortedArr[right])
                resultArr.append(arr)
                left += 1
                right -= 1
            }
        }
    }
    return resultArr
}

//let result = threeSum([-1,0,1,2,-1,-4])
//let result = threeSum([0,1,1])
let result = threeSum([0,0,0])
print("Result = \(result)")

















