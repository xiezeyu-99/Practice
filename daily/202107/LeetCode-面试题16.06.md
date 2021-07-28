# LeetCode-面试题16.06

>题目链接

[LeetCode-面试题16.06](https://leetcode-cn.com/problems/smallest-difference-lcci/)

> 思路


>代码

```go

func smallestDifference(a []int, b []int) int {
    sort.Ints(a)
    sort.Ints(b)
    res:=math.MaxInt32
    for i,j:=0,0;i<len(a)&&j<len(b); {
        absRes:=abs(a[i], b[j])
        if absRes< res {
            res = absRes
        }
        if a[i] > b[j] {
            j++
        } else {
            i++
        }
    }
    return res
}

func abs(a, b int) int {
    if a > b {
        return a-b
    } else {
        return b-a
    }
}


```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
