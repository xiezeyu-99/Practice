# LeetCode-34-find-first-and-last-position-of-element-in-sorted-array
>题目链接

[LeetCode-34-find-first-and-last-position-of-element-in-sorted-array](https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/)

>思路

二分法，先找到目标左边界，然后改变二分的查找边界，继续找右边界

>代码

```go

func searchRange(nums []int, target int) []int {
    left,right:=0,len(nums)-1

    l,r:=-1,-1
    for left <= right {
        mid:=(right-left)/2+left

        if nums[mid] > target {
            right = mid - 1
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            if (mid-1>=0 && nums[mid-1] !=target) || mid == 0 {
                l = mid
                left = mid
                right = len(nums)-1
            }
            if (mid+1<len(nums) && nums[mid+1] !=target) || mid == len(nums)-1 {
                r = mid
            }
            if l == -1 {
                right = mid - 1
            } else if r == -1 {
                left = mid + 1
            } else {
                return []int{l,r} 
            }        
        }
    }


    return []int{-1,-1}

}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了99.42%的用户

内存消耗 :4.1MB, 在所有 Go 提交中击败了60.00%的用户
