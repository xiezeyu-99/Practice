#  LeetCode-209-minimum-size-subarray-sum

>题目链接

[LeetCode-209-minimum-size-subarray-sum](https://leetcode-cn.com/problems/minimum-size-subarray-sum/)

>思路

双指针，每次移动前指针，然后记录当前的数字和，如果数字和满足条件，则记录最小长度，并且逐步把后指针前移

>代码

```go

func minSubArrayLen(s int, nums []int) int {
    start, end, sum, ans := 0, 0, 0, math.MaxInt32

    for end < len(nums) {
        sum += nums[end]
        for sum >= s {
            ans = min(ans, end-start+1)
            sum -= nums[start]
            start++
        }
        end++
    }
    if ans == math.MaxInt32 {
        return 0
    }
    return ans
}

func min(a, b int) int {
    if a > b {
        return b
    } else {
        return a
    }
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了88.8%的用户
 
内存消耗 :3.7MB, 在所有 Go 提交中击败了81.35%的用户
