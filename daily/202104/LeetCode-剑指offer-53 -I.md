# LeetCode-剑指offer-53 -I

>题目链接

[LeetCode-剑指offer-53 -I](https://leetcode-cn.com/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/)

> 思路

二分法，现在找第一个大于等于target的下标，再找第一个大于等于target+1的下标，相减就是数量

>代码

```go

func search(nums []int, target int) int {
    if len(nums) == 0 {
        return 0
    }

    var binFind func(left,right,target int) int
    binFind = func(left,right,target int) int{
        for left<right {
            mid:=(right-left)/2+left
            if nums[mid] < target {
                left = mid + 1
            } else  {
                right = mid
            } 
        }
        return left
    }
    left:=binFind(0,len(nums), target)
    if left == len(nums) || nums[left] != target {
        return 0
    }
    right:=binFind(left,len(nums), target+1)
    return right - left 
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了82.05%的用户

内存消耗 :3.9MB, 在所有 Go 提交中击败了100.00%的用户
