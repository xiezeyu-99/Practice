#  LeetCode-213-house-robber-ii

>题目链接

[LeetCode-213-house-robber-ii](https://leetcode-cn.com/problems/house-robber-ii/)

>思路

为了避免第一家和最后一家互相制约的影响，分开两种情况计算，即不偷第一家和不偷最后一家两种情况，分别把数组的头尾元素去掉即可

>代码

```go

func rob(nums []int) int {
    if len(nums) == 1{
        return nums[0]
    }
    rob1 := subRob(nums[:len(nums)-1])
    rob2 := subRob(nums[1:])
    return max(rob1, rob2)
}

func subRob(nums []int) int {
    rob := make([]int, len(nums))
    noRob := make([]int, len(nums))
    rob[0] = nums[0]
    noRob[0] = 0

    for i := 1; i < len(nums); i++ {
        rob[i] = noRob[i-1] + nums[i]
        noRob[i] = max(noRob[i-1], rob[i-1])
    }
    return max(rob[len(rob)-1], noRob[len(noRob)-1])
}

func max(a, b int) int {
    if a > b {
        return a
    } else {
        return b
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了7.09%的用户
