# LeetCode-面试题05.08

>题目链接

[LeetCode-面试题05.08](https://leetcode-cn.com/problems/draw-line-lcci/)

> 思路


>代码

```go

func drawLine(length int, w int, x1 int, x2 int, y int) []int {
    ret := make([]int, length)
    for i := range ret {
        var i32 int32

        for k := 0 + i*32; k < 32+i*32; k++ {
            if k >= x1+y*w && k <= x2+y*w {
                i32 |= 1 << (31 - uint(k-i*32))
            }
        }
        ret[i] = int(i32)
    }
    return ret
}


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
