#  LeetCode-279-perfect-squares

>题目链接

[LeetCode-279-perfect-squares](https://leetcode-cn.com/problems/perfect-squares/)

>思路

动态规划

>代码

```go

func numSquares(n int) int {
    m := int(math.Sqrt(float64(n)))
    dp := make([]int, n+1)
    dp[0] = 0
    for i := 1; i <= n; i++ {
        dp[i] = math.MaxInt64
    }
    for i := 1; i <= m; i++ {
        for j := i * i; j <= n; j++ {
            dp[j] = min(dp[j], dp[j-i*i]+1)
        }
    }
    return dp[n]
}

func min(x, y int) int {
    if x > y {
        return y
    } else {
        return x
    }
}

```

>复杂度分析

时间复杂度：O(nlong)

空间复杂度：O(n)

>总结

执行用时 :24ms, 在所有 Go 提交中击败了81.11%的用户
 
内存消耗 :6.1MB, 在所有 Go 提交中击败了64.34%的用户
