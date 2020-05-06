# LeetCode-81-search-in-rotated-sorted-array-ii

> 题目链接

[LeetCode-81-search-in-rotated-sorted-array-ii](https://leetcode-cn.com/problems/search-in-rotated-sorted-array-ii/)

> 思路

二分法查找，设中点为mid，如果有：

1.nums[start]<=target < nums[mid]，则目标值位于start-mid的有序区间，调整end的值，否则调整start

2.nums[mid]<target<=nums[end]，则目标值位于mid-end的有序区间，调整start的值，否则调整end


> 代码

```go

func search(nums []int, target int) bool {
    if len(nums) == 0 {
        return false
    }
    start,end:=0,len(nums)-1
    for start <=end {
        mid:=(end-start)>>2+start
        if nums[mid] == target{
            return true
        }
        if nums[mid] > nums[start] {
            if nums[start] <= target && target < nums[mid] {
                end = mid-1
            } else {
                start = mid+1
            }
        } else if nums[mid] < nums[start] {
            if nums[mid] < target && target <= nums[end] {
                start = mid+1
            } else {
                end = mid-1
            }
        } else {
            for start == start+1{
                start++
            }
            start++
        }
    }

    return false
}



```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.2 MB, 在所有 Go 提交中击败了100.00%的用户

