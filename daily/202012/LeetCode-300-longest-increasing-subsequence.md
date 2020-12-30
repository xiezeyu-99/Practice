#  LeetCode-300-longest-increasing-subsequence

>题目链接

[LeetCode-300-longest-increasing-subsequence](https://leetcode-cn.com/problems/longest-increasing-subsequence/)

>思路

dp[i]表示i结尾的子序列长度

>代码

```go

func lengthOfLIS(nums []int) int {
    dp := make([]int, len(nums))
    res:=1
    for i := 0; i < len(nums); i++ {
        dp[i] = 1
        for j := 0; j < i; j++ {
            if nums[j] < nums[i] {
                dp[i] = max(dp[i], dp[j]+1)
            }
        }
        res = max(res,dp[i])
    }
    return res
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

执行用时 :68ms, 在所有 Go 提交中击败了27.30%的用户
 
内存消耗 :3.7MB, 在所有 Go 提交中击败了22.33%的用户
