# LeetCode-162-find-peak-element

> 题目链接

[LeetCode-162-find-peak-element](https://leetcode-cn.com/problems/find-peak-element/)

> 思路

1.当只有一个元素时，直接返回

2.二分法查找，中点有两个的话取左边的那个，因此中点的右边肯定有值，可以把中点元素与右边元素比较，判断中点位于递增区间还是递减区间

3.如果中点小于右边元素，那中点位于递增区间且中点值肯定不是目标值，更新开始位置为mid+1

4.如果中点大于右边元素，那中点位于递减区间且中点也可能是目标值，更新结束位置为mid

5.区间最后缩减到只有一个元素时，也就是start==end时，即为目标值，因此循环条件是start<end


> 代码

```go

func findPeakElement(nums []int) int {
    if len(nums) ==1 {
        return 0
    }

    start,end:=0,len(nums)-1
    for start < end {
        mid:= (end-start)>>1+start
        if nums[mid] < nums[mid+1] {
            start  = mid + 1
        } else { 
            end  = mid
        }
    }
    return start
}


```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了84.40%的用户

内存消耗 :2.8 MB, 在所有 Go 提交中击败了100.00%的用户

