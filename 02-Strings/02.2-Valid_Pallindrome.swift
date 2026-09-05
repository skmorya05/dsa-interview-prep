/*
 Problem: Valid Palindrome II
 Difficulty: Easy
 Pattern: Two-Pointer 
 Leetcode: https://leetcode.com/problems/valid-palindrome-ii/description/

 Time Complexity:
 Space Complexity:
 
 Given a string s, return true if the s can be palindrome after deleting at most one character from it.
 Example 1:
 Input: s = "aba"
 Output: true
 
 Example 2:
 Input: s = "abca"
 Output: true
 Explanation: You could delete the character 'c'.
 
 Example 3:
 Input: s = "abc"
 Output: false
*/

func validPalindrome(_ s: String) -> Bool {
    let testArray = Array(s)
    var left = 0
    var right = testArray.count - 1
    while (left < right) {
        if testArray[left] != testArray[right] {
            return testPalindromeFor(array: testArray, left: left + 1, right: right) 
            || testPalindromeFor(array: testArray, left: left, right: right - 1)
        }
        left += 1
        right -= 1
    }
    return true
}

func testPalindromeFor(array: [Character], left: Int, right: Int) -> Bool {
    var leftIndex = left
    var rightIndex = right
    while (leftIndex < rightIndex) {
        if array[leftIndex] != array[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    return true
}

let result1 = validPalindrome("aba")
print("result1 = \(result1) and expected is true")

let result2 = validPalindrome("abca")
print("result2 = \(result2) and expected is true")

let result3 = validPalindrome("abc")
print("result3 = \(result3) and expected is false")