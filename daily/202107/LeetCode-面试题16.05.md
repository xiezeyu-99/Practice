# LeetCode-面试题16.05

>题目链接

[LeetCode-面试题16.05](https://leetcode-cn.com/problems/factorial-zeros-lcci/)

> 思路


>代码

```go

func trailingZeroes(n int) int {
    if n < 5 {
        return 0
    }
    return n / 5 + trailingZeroes(n / 5)
}


```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
