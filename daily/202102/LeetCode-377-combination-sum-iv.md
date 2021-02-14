#  LeetCode-377-combination-sum-iv

>题目链接

[LeetCode-377-combination-sum-iv](https://leetcode-cn.com/problems/combination-sum-iv/)

>思路

动态规划

>代码


```go

func combinationSum4(nums []int, target int) int {
    dp := make([]int, target + 1)
    dp[0] = 1
    // 外层循环遍历状态
    for i := 1; i <= target; i++ {
        // 里层循环遍历选择
        for _, num := range nums {
            if i - num >= 0 {
                // 所有可能的选择之和
                dp[i] += dp[i - num]
            }
        }
    } 
    return dp[target]
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了60.29%的用户
