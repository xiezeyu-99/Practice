# LeetCode-剑指offer-53 -II

>题目链接

[LeetCode-剑指offer-53 -II](https://leetcode-cn.com/problems/que-shi-de-shu-zi-lcof/)

> 思路

二分法

>代码

```go

func missingNumber(nums []int) int {
    left,right:=0,len(nums)

    for left<right{
        mid:=(right-left)/2+left
        if nums[mid] == mid {
            left = mid +1
        } else {
            right = mid
        }
    }
    return left
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了95.32%的用户

内存消耗 :6.1MB, 在所有 Go 提交中击败了100.00%的用户
