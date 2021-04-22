# LeetCode-剑指offer-48

>题目链接

[LeetCode-剑指offer-48](https://leetcode-cn.com/problems/zui-chang-bu-han-zhong-fu-zi-fu-de-zi-zi-fu-chuan-lcof/)

> 思路

双指针

>代码

```go

func lengthOfLongestSubstring(s string) int {
    count := make(map[byte]int)
    res := 0
    i, j := 0, 0
    for j < len(s) {
        if index, ok := count[s[j]]; ok && index >= i {
            i = index+1
        }
        count[s[j]] = j
        if j-i+1 > res {
            res = j - i + 1
        }
        j++
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了79*.59%的用户

内存消耗 :3.8MB, 在所有 Go 提交中击败了64.41%的用户
