# LeetCode-剑指offer-50

>题目链接

[LeetCode-剑指offer-50](https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/)

> 思路


>代码

```go

func firstUniqChar(s string) byte {
    count := make([]int ,26)
    for i := 0; i < len(s); i++ {
        count[s[i]-'a']++
    }

    for i := 0; i < len(s); i++ {
        if count[s[i]-'a'] == 1 {
            return s[i]
        }
    }
    return ' '
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了82.05%的用户

内存消耗 :5.3MB, 在所有 Go 提交中击败了70.84%的用户
