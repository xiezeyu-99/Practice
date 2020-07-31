# LeetCode-26-remove-duplicates-from-sorted-array

>题目链接

[LeetCode-26-remove-duplicates-from-sorted-array](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/)

>思路

两个指针，快指针遇到相同的值就不断前进，直到值不相同，然后把值赋给慢指针指向的位置

>代码

```go

func removeDuplicates(nums []int) int {
    slow:=0
    for fast:=1;fast<len(nums);fast++ {
        if nums[fast] == nums[fast-1] {
            continue
        }
        nums[slow+1] = nums[fast]   
        slow++   
    }
    return slow+1
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了89.36%的用户

内存消耗 :4.6MB, 在所有 Go 提交中击败了70%的用户
