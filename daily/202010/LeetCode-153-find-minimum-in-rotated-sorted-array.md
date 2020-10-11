# LeetCode-153-find-minimum-in-rotated-sorted-array
>题目链接

[LeetCode-153-find-minimum-in-rotated-sorted-array](https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/)

>思路

二分法

>代码

```go

func findMin(nums []int) int {

    left, right := 0, len(nums)-1

    for left <= right {
        mid := (right-left)/2 + left
        if nums[mid] > nums[right] {
            left = mid + 1
            if nums[mid] > nums[left] {
                return nums[left]
            }
        } else if nums[mid] < nums[left] {
            right = mid - 1
            if nums[mid] < nums[right] {
                return nums[mid]
            }
        } else {
            return nums[0]
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
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了24.66%的用户
