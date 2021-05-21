# LeetCode-1035

>题目链接

[LeetCode-1035](https://leetcode-cn.com/problems/uncrossed-lines/)

> 思路

要直线不想交，则两个点的相对顺序要一致，等于求最长子序

>代码

```go

func maxUncrossedLines(nums1, nums2 []int) int {
    m, n := len(nums1), len(nums2)
    dp := make([][]int, m+1)
    for i := range dp {
        dp[i] = make([]int, n+1)
    }
    for i, v := range nums1 {
        for j, w := range nums2 {
            if v == w {
                dp[i+1][j+1] = dp[i][j] + 1
            } else {
                dp[i+1][j+1] = max(dp[i][j+1], dp[i+1][j])
            }
        }
    }
    return dp[m][n]
}

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n^2)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了64.10%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了25.92%的用户
