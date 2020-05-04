### LeetCode-35-search-insert-position

> 题目链接

[LeetCode-35-search-insert-position](https://leetcode-cn.com/problems/search-insert-position/)

> 思路

二分法查找第一个大于等于目标值的位置

> 代码

```go

func searchInsert(nums []int, target int)  int {
    length:=len(nums)-1
    start,end:=0,length

    for start<=end{
        mid:=(end-start)/2+start
        if nums[mid]==target{
            return mid
        } else if nums[mid] > target{
            if mid==0 || nums[mid-1] < target{
                return mid
            } else if nums[mid-1] == target {
                return mid-1
            } else {
                end = mid-1
            }       
        } else if nums[mid] < target{
            if mid==length || nums[mid+1] >= target{
                return mid+1
            } else {
                start = mid+1
            }
        }
    }
    return -1
}

```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了92.51%的用户

内存消耗 :3.1 MB, 在所有 Go 提交中击败了100.00%的用户
