# LeetCode-剑指offer-57

>题目链接

[LeetCode-剑指offer-57](https://leetcode-cn.com/problems/he-wei-sde-liang-ge-shu-zi-lcof/)

> 思路

>代码

```go

func twoSum(nums []int, target int) []int {
    l,r:=0,len(nums)-1
    for l<r {
        sum:=nums[l]+nums[r]
        if sum > target {
            r--
        } else if sum < target {
            l++ 
        } else {
            return []int{nums[l],nums[r]}
        }
    }
    return nil
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :208ms, 在所有 Go 提交中击败了94.55%的用户

内存消耗 :7.9MB, 在所有 Go 提交中击败了97.34%的用户
