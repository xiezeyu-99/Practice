#  LeetCode-289-game-of-life

>题目链接

[LeetCode-289-game-of-life](https://leetcode-cn.com/problems/game-of-life/)

>思路

用额外状态表示生到死和死到生的状态转换

>代码

```go

func gameOfLife(board [][]int) {
    for i := 0; i < len(board); i++ {
        for j := 0; j < len(board[i]); j++ {
            count := check(board, i, j)
            if board[i][j] == 1 {
                if count < 2 {
                    board[i][j] = 2
                } else if count == 2 || count == 3 {
                    board[i][j] = 1
                } else if count > 3 {
                    board[i][j] = 2
                }
            } else {
                if count == 3 {
                    board[i][j] = -1
                }
            }
        }
    }
    for i := 0; i < len(board); i++ {
        for j := 0; j < len(board[i]); j++ {
            if board[i][j] == 2 {
                board[i][j] = 0
            } else if board[i][j] == -1 {
                board[i][j] = 1
            }
        }
    }
}

func check(board [][]int, i, j int) int {
    liveCount := 0
    if i-1 >= 0 && j-1 >= 0 && board[i-1][j-1] > 0 {
        liveCount++
    }
    if i-1 >= 0 && board[i-1][j] > 0 {
        liveCount++
    }
    if i-1 >= 0 && j+1 < len(board[i-1]) && board[i-1][j+1] > 0 {
        liveCount++
    }
    if j-1 >= 0 && board[i][j-1] > 0 {
        liveCount++
    }
    if j+1 < len(board[i]) && board[i][j+1] > 0 {
        liveCount++
    }
    if j-1 >= 0 && i+1 < len(board) && board[i+1][j-1] > 0 {
        liveCount++
    }
    if i+1 < len(board) && board[i+1][j] > 0 {
        liveCount++
    }
    if i+1 < len(board) && j+1 < len(board[i-1]) && board[i+1][j+1] > 0 {
        liveCount++
    }
    return liveCount
}

```

>复杂度分析

时间复杂度：O(mn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
