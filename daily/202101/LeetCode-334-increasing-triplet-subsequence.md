# LeetCode-334-increasing-triplet-subsequence

>题目链接

[LeetCode-334-increasing-triplet-subsequence](https://leetcode-cn.com/problems/increasing-triplet-subsequence/)

>思路

先找到最小值和次小值，然后如果再找得到比它们大的，那就是找到了结果

>代码

```go

func increasingTriplet(nums []int) bool {
    m1, m2 := math.MaxInt64, math.MaxInt64

    for i := 0; i < len(nums); i++ {
        if m1 >= nums[i] {
            m1 = nums[i]
        } else if m2 >= nums[i] {
            m2 = nums[i]
        } else {
            return true
        }
    }

    return false
}




```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.39%的用户
 
内存消耗 :3MB, 在所有 Go 提交中击败了36.92%的用户
