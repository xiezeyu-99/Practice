#  LeetCode-304-range-sum-query-2d-immutable

>题目链接

[LeetCode-304-range-sum-query-2d-immutable](https://leetcode-cn.com/problems/range-sum-query-2d-immutable/)

>思路

动态规划，dp[i][j]表示0点到i,j点的矩形的面积

>代码

```go

type NumMatrix struct {
    dp [][]int
}

func Constructor(matrix [][]int) NumMatrix {
    if len(matrix) == 0 || len(matrix[0]) == 0 {
        return NumMatrix{
            dp: [][]int{},
        }
    }

    dp := make([][]int, len(matrix))
    for i := 0; i < len(matrix); i++ {
        dp[i] = make([]int, len(matrix[i]))
        for j := 0; j < len(matrix[i]); j++ {
            if i == 0 && j == 0 {
                dp[i][j] = matrix[i][j]
            } else if i == 0 {
                dp[i][j] = dp[i][j-1] + matrix[i][j]
            } else if j == 0 {
                dp[i][j] = dp[i-1][j] + matrix[i][j]
            } else {
                dp[i][j] = dp[i-1][j] + dp[i][j-1] + matrix[i][j] - dp[i-1][j-1]
            }
        }
    }
    return NumMatrix{
        dp: dp,
    }
}

func (this *NumMatrix) SumRegion(row1 int, col1 int, row2 int, col2 int) int {

    if row1 == 0 && col1 == 0 {
        return this.dp[row2][col2]
    } else if row1 == 0 {
        return this.dp[row2][col2]  - this.dp[row2][col1-1] 
    } else if col1 == 0 {
        return this.dp[row2][col2] - this.dp[row1-1][col2] 
    } else {
        return this.dp[row2][col2] - this.dp[row1-1][col2] - this.dp[row2][col1-1] + this.dp[row1-1][col1-1]
    }
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :36ms, 在所有 Go 提交中击败了62.82%的用户
 
内存消耗 :10.5MB, 在所有 Go 提交中击败了11.54%的用户
