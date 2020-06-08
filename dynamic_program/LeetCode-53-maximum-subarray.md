# LeetCode-53-maximum-subarray

>题目链接

[LeetCode-53-maximum-subarray](https://leetcode-cn.com/problems/maximum-subarray/)

>思路


1、设f( i )为第i个元素结尾的最大子序和，动态规划转移方程为f（i）= max( f ( i-1 )+nums[ i ],nums[ i ] )，最终结果为最大的f( i )。

2、因为只需要求最终结果，因此f( i )的值可以直接记在nums[ i ]中，减少空间复杂度

>代码

```go

func maxSubArray(nums []int) int {
    max:=nums[0]
    for i:=1;i<len(nums);i++{
        if  nums[i-1] > 0{
            nums[i] = nums[i-1]+nums[i]
        } 
        if nums[i]>max {
            max = nums[i]
        }
    }
    return max
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了96.76%的用户

内存消耗 :3.3MB, 在所有 Go 提交中击败了100.00%的用户
