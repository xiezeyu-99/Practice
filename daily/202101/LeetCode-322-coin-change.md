#  LeetCode-322-coin-change

>题目链接

[LeetCode-322-coin-change](https://leetcode-cn.com/problems/coin-change/)

>思路

动态规划

>代码

```go

func coinChange(coins []int, amount int) int {
    dp := make([]int, amount+1)
    for i := 1; i <= amount; i++ {
        dp[i] = amount+1
    }
    for _, c := range coins {
        for i := c; i<= amount; i++ {
            dp[i] = min(dp[i], dp[i-c]+1)
        }
    }
    if dp[amount] == amount+1 {
        return -1
    }
    return dp[amount]
}

func min(x, y int) int {
    if x < y {
        return x
    }
    return y
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了92.97%的用户
 
内存消耗 :6.1MB, 在所有 Go 提交中击败了68.21%的用户
