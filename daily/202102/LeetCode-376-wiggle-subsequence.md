#  LeetCode-376-wiggle-subsequence

>题目链接

[LeetCode-376-wiggle-subsequence](https://leetcode-cn.com/problems/wiggle-subsequence/)

>思路

动态规划

>代码


```go

func wiggleMaxLength(nums []int) int {
    if len(nums) == 0 {
        return 0
    }
    dp:=make([][]int,len(nums))
    dp[0] = []int{1, 0} 
    for i:=1;i<len(nums);i++{
        if nums[i] < nums[i-1] {
            dp[i] = []int{2, -1}
        } else if nums[i] > nums[i-1] {
            dp[i] = []int{2, 1}
        } else {
            dp[i] = []int{1, 0} 
        }
        
    }
    for i:=1;i<len(nums);i++ {
        for j:=0;j<i;j++ {
            if nums[j] < nums[i] && dp[j][1] == -1 && dp[j][0]+1 > dp[i][0]{
                dp[i] = []int{dp[j][0]+1, 1}
            } else if nums[j] > nums[i] && dp[j][1] == 1 && dp[j][0]+1 > dp[i][0]{
                dp[i] = []int{dp[j][0]+1, -1}
            }
        }
    }
    max:=0
    for i:=range dp {
        if dp[i][0] > max {
            max = dp[i][0]
        }
    }
    return max
}




```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :6.1MB, 在所有 Go 提交中击败了5.01%的用户
