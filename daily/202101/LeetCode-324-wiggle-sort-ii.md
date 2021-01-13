#  LeetCode-324-wiggle-sort-ii

>题目链接

[LeetCode-324-wiggle-sort-ii](https://leetcode-cn.com/problems/wiggle-sort-ii/)

>思路



>代码

```go

func wiggleSort(nums []int) {
    sort.Ints(nums)
    res := make([]int, len(nums))

    mid := len(nums)/2
    if len(nums)%2 == 1 {
        mid++
    }

    for i, j := mid-1, 0; i >= 0; i, j = i-1, j+2 {
        res[j] = nums[i]
    }
    for i, j := len(nums)-1, 1; i >= mid; i, j = i-1, j+2 {
        res[j] = nums[i]
    }

    copy(nums, res)
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :24ms, 在所有 Go 提交中击败了78.26%的用户
 
内存消耗 :6.3MB, 在所有 Go 提交中击败了69.66%的用户
