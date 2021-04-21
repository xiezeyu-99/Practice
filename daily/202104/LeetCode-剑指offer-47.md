# LeetCode-剑指offer-47

>题目链接

[LeetCode-剑指offer-47](https://leetcode-cn.com/problems/li-wu-de-zui-da-jie-zhi-lcof/)

> 思路

动态规划

>代码

```go

func maxValue(grid [][]int) int {
    price := make([]int, len(grid[0]))
    for i:=0;i<len(grid);i++{
        for j:=0;j<len(grid[i]);j++{
            if j == 0 {
                price[j] = grid[i][j] + price[j]
            } else {
                price[j] = max(price[j-1],price[j]) + grid[i][j]
            }          
        }
    }
    return price[len(price)-1]
}

func max(i,j int) int {
    if i>j {
        return i
    } else {
        return j
    }
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了85.14%的用户

内存消耗 :3.8MB, 在所有 Go 提交中击败了78.43%的用户
