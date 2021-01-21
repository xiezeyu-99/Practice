#  LeetCode-330-patching-array

>题目链接

[LeetCode-330-patching-array](https://leetcode-cn.com/problems/patching-array/)

>思路

贪心

>代码

```go

func minPatches(nums []int, n int) (patches int) {
    for i, x := 0, 1; x <= n; {
        if i < len(nums) && nums[i] <= x {
            x += nums[i]
            i++
        } else {
            x *= 2
            patches++
        }
    }
    return
}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :3.3MB, 在所有 Go 提交中击败了100.00%的用户
