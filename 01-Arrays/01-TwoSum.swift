/*
 Problem: Two Sum
 Difficulty: Easy
 Pattern: HashMap

 Time Complexity: O(n)
 Space Complexity: O(n)
*/

func twoSum( nums: [Int], target: Int) -> [Int] {
    var map: [Int: Int] = [:]

    for (index, num) in nums.enumerated() {
        let complement = target - num
        
        if let previousIndex = map[complement] {
            return [num, previousIndex]
        }
        
        map[num] = index
    }

    return []
}

let arr = twoSum(nums: [0, 1, 2, 4, 5], target: 8)
print("Array = \(arr)")