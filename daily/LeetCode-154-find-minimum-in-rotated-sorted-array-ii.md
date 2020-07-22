# LeetCode-154-find-minimum-in-rotated-sorted-array-ii

>题目链接

[LeetCode-154-find-minimum-in-rotated-sorted-array-ii](https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array-ii/)

>思路

二分法

>代码

```go

ffunc findMin(nums []int) int {
    left, right := 0, len(nums) - 1
    for left < right {
        mid := left + (right - left) / 2
        if nums[mid] < nums[right] {
            right = mid
        } else if nums[mid] > nums[right] {
            left = mid + 1
        } else {
            right--
        }
    }
    return nums[left]
}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了91.79%的用户

内存消耗 :3.1MB, 在所有 Go 提交中击败了100.00%的用户
