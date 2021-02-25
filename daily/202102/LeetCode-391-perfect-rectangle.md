#  LeetCode-391-perfect-rectangle

>题目链接

[LeetCode-391-perfect-rectangle](https://leetcode-cn.com/problems/perfect-rectangle/)

>思路

1、遍历数组，找到四个顶点，通过顶点计算的面积与每个小矩形面积的和作比较，不相等则不满足条件

2、相等的情况下，用map记录所有小矩形的四个顶点，如果同一个点出现两次就删除map中的值，因为如果是完美矩形，则只会有四个点只出现一次，其余点都会因重叠而删除

>代码

```go

func isRectangleCover(rectangles [][]int) bool {
    minW, maxW, minH, maxH, totalArea := math.MaxInt32, math.MinInt32, math.MaxInt32, math.MinInt32, 0
    set := map[int]bool{}
    for _, v := range rectangles {
        minW = min(minW, v[0])
        maxW = max(maxW, v[2])
        minH = min(minH, v[1])
        maxH = max(maxH, v[3])
        totalArea += (v[2] - v[0]) * (v[3] - v[1])
        setPut(set, v[0], v[1])
        setPut(set, v[0], v[3])
        setPut(set, v[2], v[3])
        setPut(set, v[2], v[1])

    }
    w := maxW - minW
    h := maxH - minH
    if w*h != totalArea {
        return false
    }

    if len(set) != 4 {
        return false
    }
    if setCheck(set, minW, minH) && setCheck(set, minW, maxH) && setCheck(set, maxW, minH) && setCheck(set, maxW, maxH) {
        return true
    }
    return false
}

func setCheck(set map[int]bool, x, y int) bool {
    return set[x<<8+y]
}

func setPut(set map[int]bool, x, y int) {
    key := x<<8 + y
    if set[key] {
        delete(set, key)
    } else {
        set[key] = true
    }
}

func min(a, b int) int {
    if a > b {
        return b
    } else {
        return a
    }
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
 
内存消耗 :7.1MB, 在所有 Go 提交中击败了78.13%的用户
