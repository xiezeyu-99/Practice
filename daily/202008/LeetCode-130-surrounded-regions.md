# LeetCode-130-surrounded-regions
>题目链接

[LeetCode-130-surrounded-regions](https://leetcode-cn.com/problems/surrounded-regions/)

>思路

处于边界的O以及和边界O直接或者间接相连的O就是不被包围的，用深度优先搜索，找出所有不被包围的O，标记为A，然后再遍历矩阵，把A改回O，O改为X

>代码

```go

var n, m int

func solve(board [][]byte)  {
    if len(board) == 0 || len(board[0]) == 0 {
        return
    }
    n, m = len(board), len(board[0])
    for i := 0; i < n; i++ {
        dfs(board, i, 0)
        dfs(board, i, m - 1)
    }
    for i := 1; i < m - 1; i++ {
        dfs(board, 0, i)
        dfs(board, n - 1, i)
    }
    for i := 0; i < n; i++ {
        for j := 0; j < m; j++ {
            if board[i][j] == 'A' {
                board[i][j] = 'O'
            } else if board[i][j] == 'O' {
                board[i][j] = 'X'
            }
        }
    }
}

func dfs(board [][]byte, x, y int) {
    if x < 0 || x >= n || y < 0 || y >= m || board[x][y] != 'O' {
        return
    }
    board[x][y] = 'A'
    dfs(board, x + 1, y)
    dfs(board, x - 1, y)
    dfs(board, x, y + 1)
    dfs(board, x, y - 1)
}

```

>复杂度分析

时间复杂度：O(m*n)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了97.95%的用户

内存消耗 :6MB, 在所有 Go 提交中击败了43.59%的用户
