# LeetCode-85-maximal-rectangle
>题目链接

[LeetCode-85-maximal-rectangle](https://leetcode-cn.com/problems/maximal-rectangle/)

>思路

求出每一行每个位置最大连续高度，然后对于每一行来说，问题就和[84题](https://leetcode-cn.com/problems/largest-rectangle-in-histogram/)一样了

>代码

```go

func maximalRectangle(matrix [][]byte) int {
    if matrix == nil || len(matrix) == 0 {
        return 0
    }
    heights := make([]int, len(matrix[0]))

    maxArea := 0
    for i := 0; i < len(matrix); i++ {
        for j := 0; j < len(matrix[0]); j++ {
            if matrix[i][j] == '0' {
                heights[j] = 0
            } else {
                heights[j]++
            }
        }
        maxArea = max(maxArea, largestRectangleArea(heights))

    }
    return maxArea
}

func largestRectangleArea(heights []int) int {
    left, right := make([]int, len(heights)), make([]int, len(heights))
    for i := 0; i < len(heights); i++ {
        right[i] = len(heights)
    }
    stack := []int{}
    for i := 0; i < len(heights); i++ {
        for len(stack) > 0 && heights[stack[len(stack)-1]] > heights[i] {
            right[stack[len(stack)-1]] = i
            stack = stack[:len(stack)-1]
        }
        if len(stack) > 0 {
            left[i] = stack[len(stack)-1]
        } else {
            left[i] = -1
        }
        stack = append(stack, i)
    }
    ans := 0
    for i := 0; i < len(heights); i++ {
        ans = max(ans, (right[i]-left[i]-1)*heights[i])
    }
    return ans
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

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了85.37%的用户

内存消耗 :5.5MB, 在所有 Go 提交中击败了21.15%的用户
