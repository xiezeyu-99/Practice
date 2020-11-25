#  LeetCode-221-maximal-square

>题目链接

[LeetCode-221-maximal-square](https://leetcode-cn.com/problems/maximal-square/)

>思路

动态规划，dp[i][j]表示i，j为右下角的最大正方形边长，转移方程为dp[i][j] = min(dp[i-1][j], min(dp[i-1][j-1], dp[i][j-1])) + 1

>代码

```go

func maximalSquare(matrix [][]byte) int {
    dp := make([][]int, len(matrix))
    maxSide := 0
    for i := 0; i < len(matrix); i++ {
        dp[i] = make([]int, len(matrix[i]))
        for j := 0; j < len(matrix[i]); j++ {
            dp[i][j] = int(matrix[i][j] - '0')
            if dp[i][j] == 1 {
                maxSide = 1
            }
        }
    }
    for i := 1; i < len(matrix); i++ {
        for j := 1; j < len(matrix[i]); j++ {
            if dp[i][j] == 1 {
                dp[i][j] = min(dp[i-1][j], min(dp[i-1][j-1], dp[i][j-1])) + 1
                if dp[i][j] > maxSide {
                    maxSide = dp[i][j]
                }
            }
        }
    }
    return maxSide*maxSide
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

空间复杂度：O(n^2)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了72.50%的用户
 
内存消耗 :3.9MB, 在所有 Go 提交中击败了73.80%的用户
