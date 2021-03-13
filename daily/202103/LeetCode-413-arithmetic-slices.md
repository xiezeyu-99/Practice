# LeetCode-413-arithmetic-slices

>题目链接

[LeetCode-413-arithmetic-slices](https://leetcode-cn.com/problems/arithmetic-slices/)

>思路



>代码

```go

func numberOfArithmeticSlices(nums []int) int {
    count := 0
    for i := 0; i < len(nums)-2; i++ {
        diff := nums[i+1] - nums[i]
        for j := i + 2; j < len(nums); j++ {
            if nums[j]-nums[j-1] == diff {
                count++
            } else {
                break
            }
        }
    }
    return count
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
