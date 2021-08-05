# LeetCode-416

>题目链接

[LeetCode-416](https://leetcode-cn.com/problems/partition-equal-subset-sum/)

> 思路

动态规划，优化空间复杂度

>代码

```go


func canPartition(nums []int) bool {
    if len(nums) < 2 {
        return false
    }
    sum,max:=0,0
    for _,v:=range nums {
        sum += v
        if v>max {
            max = v
        }
    }
    if sum%2 != 0 {
        return false
    }

    target := sum/2
    if max > target {
        return false
    }

    dp:=make([]bool, target+1)
    dp[0] = true

    for i:=1;i<len(nums);i++ {
        v:=nums[i]
        for j:=target;j>=v;j-- {
            dp[j] = dp[j] || dp[j-v]
        }
    }
    return dp[target]
    
}


```

>复杂度分析

时间复杂度：O(n*target)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
