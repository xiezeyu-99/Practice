# LeetCode-45-jump-game-ii

>题目链接

[LeetCode-45-jump-game-ii](https://leetcode-cn.com/problems/jump-game-ii/)

>思路

正向查找，每次找到可到达的最远位置

>代码

```go

func jump(nums []int) int {
    length := len(nums)
    end := 0
    maxPosition := 0
    steps := 0
    for i := 0; i < length - 1; i++ {
        maxPosition = max(maxPosition, i + nums[i])
        if i == end {
            end = maxPosition
            steps++
        }
    }
    return steps
}

func max(x, y int) int {
    if x > y {
        return x
    }
    return y
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了95.74%的用户

内存消耗 :4.3MB, 在所有 Go 提交中击败了100.00%的用户
