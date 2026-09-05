/*
 Problem: Valid Palindrome
 Difficulty: Easy
 Pattern:
 Leetcode: https://leetcode.com/problems/valid-palindrome/

 Time Complexity:
 Space Complexity:
 
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.
 
 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 
 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 
 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
*/

func isPalindrome(_ s: String) -> Bool {
    let testString = s.filter{ $0.isLetter || $0.isNumber }
    let testArray = Array(testString.lowercased())
    var left = 0
    var right = testArray.count - 1
    var result = true
    while (left < right) {
        if testArray[left] == testArray[right] {
            left += 1
            right -= 1
        } else {
            result = false
            break
        }
    }
    return result
}

let result1 = isPalindrome("A man, a plan, a canal: Panama")
print("result1 = \(result1) expected true")

let result2 = isPalindrome("race a car")
print("result2 = \(result2) expected false")

let result3 = isPalindrome(" ")
print("result3 = \(result3) expected true")

let result4 = isPalindrome("0s")
print("result4 = \(result4) expected false")
