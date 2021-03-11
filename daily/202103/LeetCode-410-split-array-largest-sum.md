# LeetCode-410-split-array-largest-sum

>题目链接

[LeetCode-410-split-array-largest-sum](https://leetcode-cn.com/problems/split-array-largest-sum/)

>思路

二分法

>代码

```go

func splitArray(nums []int, m int) int {
    left, right := 0, 0
    for i := 0; i < len(nums); i++ {
        right += nums[i]
        if left < nums[i] {
            left = nums[i]
        }
    }
    for left < right {
        mid := (right-left)/2 + left
        if check(nums, mid, m) {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}

func check(nums []int, x int, m int) bool {
    cnt := 1
    sum := 0
    for i := 0; i < len(nums); i++ {
        if sum+nums[i] > x {
            cnt++
            sum = nums[i]
        } else {
            sum += nums[i]
        }
    }
    return cnt <= m
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了100.00%的用户
