# LeetCode-200-LeetCode-200-number-of-islands
>题目链接

[LeetCode-200-number-of-islands](https://leetcode-cn.com/problems/number-of-islands/)

>思路

深度优先搜索，当找到一个1时，把属于同一个岛的点都变成0，避免重复计数

>代码

```go

func numIslands(grid [][]byte) int {
    if len(grid) == 0 {
        return 0
    }

    count := 0
    for i := 0; i < len(grid); i++ {
        for j := 0; j < len(grid[i]); j++ {
            if grid[i][j] == '1' {
                count++
                dfs(i, j, grid)
            }

        }
    }
    return count
}

func dfs(i, j int, grid [][]byte) {
    if i < 0 || j < 0 || i >= len(grid) || j >= len(grid[i]) || grid[i][j] == '0' {
        return
    }
    grid[i][j] = '0'
    dfs(i-1, j, grid)
    dfs(i+1, j, grid)
    dfs(i, j-1, grid)
    dfs(i, j+1, grid)
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了82.92%的用户
