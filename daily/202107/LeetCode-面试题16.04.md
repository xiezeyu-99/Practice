# LeetCode-面试题16.04

>题目链接

[LeetCode-面试题16.04](https://leetcode-cn.com/problems/tic-tac-toe-lcci/)

> 思路

依次遍历，记下每一行，每一列，以及对角线的和

>代码

```go

//  N x N 
func tictactoe(board []string) string {
    N := len(board)
    XWIN := N* int('X')
    OWIN := N* int('O')
    Pending := 0
    row, col := make([]int, N), make([]int, N)
    l, r := 0, 0
    
    for i := range board {
        for j := range board[i] {
            row[i] += int(board[i][j])
            col[j] += int(board[i][j])
            if board[i][j] == ' ' {
                Pending++
            }
            if i == j {
                l += int(board[i][j])
            }
            if i == N-j-1 {
                r += int(board[i][j])
            }
        }
    }

    for i := range row {
        if row[i] == XWIN || col[i] == XWIN {
            return "X"
        }
        if row[i] == OWIN || col[i] == OWIN {
            return "O"
        }
    }
    if l == XWIN || r == XWIN {
        return "X"
    }
    if l == OWIN || r == OWIN {
        return "O"
    }
    if Pending > 0 {
        return "Pending"
    }
    return "Draw"
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
