# LeetCode-198-house-robber
>题目链接

[LeetCode-198-house-robber](https://leetcode-cn.com/problems/house-robber/)

>思路

动态规划，dp[i][0]表示第i间房不偷窃时的最高金额，dp[i][1]表示第i间房偷窃时的最高金额

>代码

```go

func rob(nums []int) int {
    if len(nums) == 0{
        return 0
    }
    dp := [][]int{}
    for i := 0; i < len(nums); i++ {
        dp = append(dp, []int{0, 0})
    }
    dp[0][0] = 0
    dp[0][1] = nums[0]

    for i := 1; i < len(nums); i++ {
        dp[i][0] = max(dp[i-1][0], dp[i-1][1])
        dp[i][1] = dp[i-1][0] + nums[i]
    }
    return max(dp[len(nums)-1][0], dp[len(nums)-1][1])
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

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了5.40%的用户
