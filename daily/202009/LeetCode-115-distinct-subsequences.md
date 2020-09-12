# LeetCode-115-distinct-subsequences
>题目链接

[LeetCode-115-distinct-subsequences](https://leetcode-cn.com/problems/distinct-subsequences/)

>思路

动态规划，当S[i]==T[j]时，dp[i][j] = dp[i][j-1]+dp[i-1][j-1] , 否则 dp[i][j] = d[i][j-1] ，然后进行空间优化

>代码

```go

 func numDistinct(s string, t string) int {
    dp := make([]int, len(t) + 1)
    dp[0] = 1

    for i := 1; i <= len(s); i++ {
        for j := len(t); j >= 1; j-- {
            if s[i-1] == t[j-1] {
                dp[j] += dp[j-1]
            }
        }
    }

    return dp[len(t)]
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了81.63%的用户
