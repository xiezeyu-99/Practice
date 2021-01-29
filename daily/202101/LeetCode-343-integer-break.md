# LeetCode-343-integer-break

>题目链接

[LeetCode-343-integer-break](https://leetcode-cn.com/problems/integer-break/)

>思路

动态规划

>代码

```go

func integerBreak(n int) int {
    dp := make([]int, n+1)
    for i := 2; i <= n; i++ {
        curMax := 0
        for j := 1; j < i; j++ {
            curMax = max(curMax, max(j*(i-j), j*dp[i-j]))
        }
        dp[i] = curMax
    }
    return dp[n]
}

func max(a, b int) int {
    if a > b {
        return a
    } else {
        return b
    }
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了12.2%的用户
