/*
 Problem: Valid Anagram
 Difficulty: Easy
 Pattern: Hash Table + Counting
 Leetcode: https://leetcode.com/problems/valid-anagram/description/

 Time Complexity:
 Space Complexity:
 
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.
 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true

 Example 2:
 Input: s = "rat", t = "car"
 Output: false
 
*/

func isAnagram(_ s: String, _ t: String) -> Bool {
    let sDict = getDictFor(word: s)
    let tDict = getDictFor(word: t)
    return sDict == tDict
}

func getDictFor(word: String) -> [Character: Int] {
    var dict = [Character: Int]()
    for char in word {
        if let count = dict[char] {
            dict[char] = count + 1
        } else {
            dict[char] = 1
        }
    }
    return dict
}

let result1 = isAnagram("anagram", "nagaram")
print("result1 = \(result1) and expected true")

let result2 = isAnagram("rat", "car")
print("result2 = \(result2) and expected true")
