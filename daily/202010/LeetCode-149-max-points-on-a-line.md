# LeetCode-149-max-points-on-a-line
>题目链接

[LeetCode-149-max-points-on-a-line](https://leetcode-cn.com/problems/max-points-on-a-line/)

>思路

固定一个点，然后求和另外一个点的斜率，并记下斜率相同的点的数量以及最大值

>代码

```go

func maxPoints(points [][]int) int {
    n := len(points)
    if n < 3 {
        return n
    }
    longest := 0
    for i := 0; i < n; i++ {
        // max当前点i直线上最多的点，cnt：统计x,y同时为0
        max, cnt, m := 0, 0, make(map[string]int)
        for j := i+1; j < n; j++ {
            x, y := points[j][0] - points[i][0], points[j][1]-points[i][1]
            if x == 0 && y == 0 {
                cnt++
                continue
            }
            divisor := getDivisor(x, y) // 取x,y的公约数
            x, y = x/divisor, y/divisor // 将x,y约分化到最简
            key := strconv.Itoa(x) + "@" + strconv.Itoa(y) // 斜率相同的key相同
            m[key]++
            max = Max(max, m[key])
        }
        longest = Max(longest, max+cnt+1)
    }
    return longest
}
func Max(a, b int) int {
    if a > b {
        return a
    }
    return b
}
func getDivisor(x, y int) int { // 辗转相除法
    for y != 0 {
        x, y = y, x%y
    }
    return x
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了57.14%的用户
 
内存消耗 :5.3MB, 在所有 Go 提交中击败了35.29%的用户
