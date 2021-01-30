# LeetCode-345-reverse-vowels-of-a-string

>题目链接

[LeetCode-345-reverse-vowels-of-a-string](https://leetcode-cn.com/problems/reverse-vowels-of-a-string/)

>思路

双指针

>代码

```go

func reverseVowels(s string) string {
    b := []byte(s)
    l, r := 0, len(b) - 1
    for l < r {
        for l < r && !isVowels(b[l]) {
            l++
        }
        for l < r && !isVowels(b[r]) {
            r--
        }
        b[l], b[r] = b[r], b[l]
        l++
        r--
    }
    return string(b)
}

func isVowels (ch byte) bool {
    switch ch {
    case 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U':
        return true
    default:
        return false
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :4MB, 在所有 Go 提交中击败了99.47%的用户
