#  LeetCode-223-rectangle-area

>题目链接

[LeetCode-223-rectangle-area](https://leetcode-cn.com/problems/rectangle-area/)

>思路

分别计算面积，然后如果有相交，就减去相交部分面积

>代码

```go

func computeArea(A int, B int, C int, D int, E int, F int, G int, H int) int {
    if A >= G || C <= E || B >= H || D <= F {
        return (C-A)*(D-B) + (G-E)*(H-F)
    }

    x1, x2 := min(C, G), max(A, E)
    y1, y2 := min(D, H), max(B, F)
    x := x1 - x2
    y := y1 - y2
    return (C-A)*(D-B) + (G-E)*(H-F) - (x * y)
}
func max(a, b int) int {
    if a > b {
        return a
    } else {
        return b
    }
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

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了81.40%的用户
 
内存消耗 :6.1MB, 在所有 Go 提交中击败了78.82%的用户
