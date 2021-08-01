# LeetCode-面试题16.13

>题目链接

[LeetCode-面试题16.13](https://leetcode-cn.com/problems/bisect-squares-lcci/)

> 思路


>代码

```go


func cutSquares(square1 []int, square2 []int) []float64 {
    o1x := float64(square1[0]) + float64(square1[2])/2
    o1y := float64(square1[1]) + float64(square1[2])/2
    o2x := float64(square2[0]) + float64(square2[2])/2
    o2y := float64(square2[1]) + float64(square2[2])/2
    minX := min(square1[0], square2[0])
    maxX := max(square1[0]+square1[2], square2[0]+square2[2])
    minY := min(square1[1], square2[1])
    maxY := max(square1[1]+square1[2], square2[1]+square2[2])
    if equal(o1x, o2x) {
        return []float64{o1x, minY, o1x, maxY}
    }
    if equal(o1y, o2y) {
        return []float64{minX, o1y, maxX, o2y}
    }

    k := (o1y - o2y) / (o1x - o2x)
    // 与上下两边交
    //由两点式： (x-x1)(y2-y1)=(y-y1)(x2-x1)知，y=y0是，x=(y0-y1)(x2-x1)/(y2-y1) + x1
    if k > 1 { // 左下右上走势
        return []float64{(minY-o1y)*(o2x-o1x)/(o2y-o1y)+o1x, minY, (maxY-o1y)*(o2x-o1x)/(o2y-o1y)+o1x, maxY}
    }
    if k < -1 { // 左上右下走势
        return []float64{(maxY-o1y)*(o2x-o1x)/(o2y-o1y)+o1x, maxY, (minY-o1y)*(o2x-o1x)/(o2y-o1y)+o1x, minY}
    }
    // 与左右两边交
    //由两点式： (x-x1)(y2-y1)=(y-y1)(x2-x1)知，x=x0时， y=(x0-x1)(y2-y1)/(x2-x1) + y1
    return []float64{minX, (minX-o1x)*(o2y-o1y)/(o2x-o1x)+o1y, maxX, (maxX-o1x)*(o2y-o1y)/(o2x-o1x)+o1y}
}

func min(a, b int) float64 {
    if a < b {
        return float64(a)
    }
    return float64(b)
}
func max(a, b int) float64 {
    if a > b {
        return float64(a)
    }
    return float64(b)
}
func equal(a, b float64) bool {
    return math.Abs(a-b) < 1e-6
}





```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
