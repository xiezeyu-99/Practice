# LeetCode-152-maximum-product-subarray
>题目链接

[LeetCode-152-maximum-product-subarray](https://leetcode-cn.com/problems/maximum-product-subarray/)

>思路

动态规划，用数组表示每个节点结尾的乘积最大值。由于有正负之分，所以转移方程不单要考虑i-1最大的情况，也要考虑i-1最小的情况，因为可能负负得正。优化空间，直接用两个变量表

示最大值和最小值

>代码

```go

func maxProduct(nums []int) int {
    maxF, minF, ans := nums[0], nums[0], nums[0]
    for i := 1; i < len(nums); i++ {
        mx, mn := maxF, minF
        maxF = max(mx * nums[i], max(nums[i], mn * nums[i]))
        minF = min(mn * nums[i], min(nums[i], mx * nums[i]))
        ans = max(maxF, ans)
    }
    return ans
}

func max(x, y int) int {
    if x > y {
        return x
    }
    return y
}

func min(x, y int) int {
    if x < y {
        return x
    }
    return y
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了92.21%的用户
 
内存消耗 :2.6MB, 在所有 Go 提交中击败了54.09%的用户
