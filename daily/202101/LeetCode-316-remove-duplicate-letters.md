#  LeetCode-316-remove-duplicate-letters

>题目链接

[LeetCode-316-remove-duplicate-letters](https://leetcode-cn.com/problems/remove-duplicate-letters/)

>思路

贪心

>代码

```go

func removeDuplicateLetters(s string) string {
    left := [26]int{}
    for _, ch := range s {
        left[ch-'a']++
    }
    stack := []byte{}
    inStack := [26]bool{}
    for i := range s {
        ch := s[i]
        if !inStack[ch-'a'] {
            for len(stack) > 0 && ch < stack[len(stack)-1] {
                last := stack[len(stack)-1] - 'a'
                if left[last] == 0 {
                    break
                }
                stack = stack[:len(stack)-1]
                inStack[last] = false
            }
            stack = append(stack, ch)
            inStack[ch-'a'] = true
        }
        left[ch-'a']--
    }
    return string(stack)
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了80.13%的用户
