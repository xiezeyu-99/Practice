#  LeetCode-309-best-time-to-buy-and-sell-stock-with-cooldown
>题目链接

[LeetCode-309-best-time-to-buy-and-sell-stock-with-cooldown](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/)

>思路

动态规划

>代码

```go

func maxProfit(prices []int) int {
    if len(prices) == 0 {
        return 0
    }
    n := len(prices)
    // f[i][0]: 手上持有股票的最大收益
    // f[i][1]: 手上不持有股票，并且处于冷冻期中的累计最大收益
    // f[i][2]: 手上不持有股票，并且不在冷冻期中的累计最大收益
    f := make([][3]int, n)
    f[0][0] = -prices[0]
    for i := 1; i < n; i++ {
        f[i][0] = max(f[i-1][0], f[i-1][2] - prices[i])
        f[i][1] = f[i-1][0] + prices[i]
        f[i][2] = max(f[i-1][1], f[i-1][2]) 
    }
    return max(f[n-1][1], f[n-1][2])
}

func max(x, y int) int {
    if x > y {
        return x
    }
    return y
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.4MB, 在所有 Go 提交中击败了36.57%的用户
