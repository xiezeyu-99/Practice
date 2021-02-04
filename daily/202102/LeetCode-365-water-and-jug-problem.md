# LeetCode-365-water-and-jug-problem

>题目链接

[LeetCode-365-water-and-jug-problem](https://leetcode-cn.com/problems/water-and-jug-problem/)

>思路


>代码

```go

func canMeasureWater(x int, y int, z int) bool {
    if z == 0 || z == x+y {   // 条件 1
        return true
    } else if z > x+y || y == 0 {  // 条件 2 和 3
        return false
    }

    // 迭代公式 2、 4、 6
    return canMeasureWater(y, x%y, z%y)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了47.54%的用户
