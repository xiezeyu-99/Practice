# LeetCode-125-valid-palindrome
>题目链接

[LeetCode-125-valid-palindrome](https://leetcode-cn.com/problems/valid-palindrome/)

>思路

双指针，跳过非字母和数字

>代码

```go


func isPalindrome(s string) bool {
    if len(s) == 1 {
        return true
    }
    left, right := 0, len(s)-1

    for left < right {
        for left < len(s) && (s[left] == ' ' || !isalnum(s[left])) {
            left++
        }
        for right >= 0 && (s[right] == ' ' || !isalnum(s[right])) {
            right--
        }
        if left > right {
            return true
        }
        if strings.EqualFold(string(s[left]), string(s[right])) {
            left++
            right--
        } else {
            return false
        }
    }
    return true
}

func isalnum(ch byte) bool {
    return (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9')
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了78.89%的用户
 
内存消耗 :2.6MB, 在所有 Go 提交中击败了97.00%的用户
