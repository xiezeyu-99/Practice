# LeetCode-84-largest-rectangle-in-histogram
>题目链接

[LeetCode-84-largest-rectangle-in-histogram](https://leetcode-cn.com/problems/largest-rectangle-in-histogram/)

>思路

利用栈，栈为空或者当前元素小于栈顶元素时，就不断出栈。由于出栈元素右边最近的小于自身的柱子就是当前遍历的位置，所以出栈元素的右边界就是当前位置。又由于入栈前把大于当前

的元素都出栈了，所以剩余的栈顶元素小于当前元素，也就是当前元素的左边界

>代码

```go

func largestRectangleArea(heights []int) int {
    n := len(heights)
    left, right := make([]int, n), make([]int, n)
    for i := 0; i < n; i++ {
        right[i] = n
    }
    mono_stack := []int{}
    for i := 0; i < n; i++ {
        for len(mono_stack) > 0 && heights[mono_stack[len(mono_stack)-1]] >= heights[i] {
            right[mono_stack[len(mono_stack)-1]] = i
            mono_stack = mono_stack[:len(mono_stack)-1]
        }
        if len(mono_stack) == 0 {
            left[i] = -1
        } else {
            left[i] = mono_stack[len(mono_stack)-1]
        }
        mono_stack = append(mono_stack, i)
    }
    ans := 0
    for i := 0; i < n; i++ {
        ans = max(ans, (right[i] - left[i] - 1) * heights[i])
    }
    return ans
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

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了96.72%的用户

内存消耗 :5.9MB, 在所有 Go 提交中击败了37.56%的用户
