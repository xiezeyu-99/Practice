# LeetCode-33-search-in-rotated-sorted-array
>题目链接

[LeetCode-33-search-in-rotated-sorted-array](https://leetcode-cn.com/problems/search-in-rotated-sorted-array/)

>思路

二分法，先确定中点所在区间，然后再处理中点和目标值处于单调区间内的情况以及非单调区间内的情况



>代码

```go

func search(nums []int, target int) int {
    left, right := 0, len(nums)-1

    for left <= right {
        mid := (right-left)/2 + left

        if nums[mid] == target {
            return mid
        } else if nums[mid] >= nums[0] { //中点在左区间
            if target >= nums[0] && target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        } else if nums[mid] <= nums[len(nums)-1] {
            if target <= nums[len(nums)-1] && target > nums[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } 
    }
    return -1
}


```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.6MB, 在所有 Go 提交中击败了100.00%的用户
