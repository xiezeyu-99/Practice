# LeetCode-33

>题目链接

[LeetCode-33](https://leetcode-cn.com/problems/search-in-rotated-sorted-array/)

> 思路


>代码

```go


func search(nums []int, target int) int {
    left,right:=0,len(nums)-1

    for left<=right {
        mid:=(right-left)/2+left
        if target == nums[mid] {
            return mid
        } else if nums[mid] >= nums[left] {
            if target >= nums[left] && target < nums[mid] {
                right = mid - 1
            } else {
                left = mid +1
            }
        } else if nums[mid] <= nums[right]{
            if target <= nums[right] && target > nums[mid] {
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

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
