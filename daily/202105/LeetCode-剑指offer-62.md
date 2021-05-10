# LeetCode-剑指offer-62

>题目链接

[LeetCode-剑指offer-62](https://leetcode-cn.com/problems/yuan-quan-zhong-zui-hou-sheng-xia-de-shu-zi-lcof/)

> 思路



>代码

```go

func lastRemaining(n int, m int) int {
    dp := 0 //题目从数字零开始
    for i := 2; i <= n; i++ {
        dp = (dp + m) % i
    }
    return dp
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了99.08%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了57.83%的用户
