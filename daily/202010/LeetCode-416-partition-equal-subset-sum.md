# LeetCode-416-partition-equal-subset-sum
>题目链接

[LeetCode-416-partition-equal-subset-sum](https://leetcode-cn.com/problems/partition-equal-subset-sum/)

>思路

动态规划，已数组总和的一半为目标值

>代码

```go

func canPartition(nums []int) bool {
    n := len(nums)
    if n < 2 {
        return false
    }

    sum, max := 0, 0
    for _, v := range nums {
        sum += v
        if v > max {
            max = v
        }
    }
    if sum%2 != 0 {
        return false
    }

    target := sum / 2
    if max > target {
        return false
    }

    dp := make([]bool, target+1)
    dp[0] = true
    for i := 0; i < n; i++ {
        v := nums[i]
        for j := target; j >= v; j-- {
            dp[j] = dp[j] || dp[j-v]
        }
    }
    return dp[target]
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了85.20%的用户
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了56.31%的用户
