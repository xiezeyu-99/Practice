# LeetCode-79-word-search
>题目链接

[LeetCode-79-word-search](https://leetcode-cn.com/problems/word-search/)

>思路

把用过的位置变为*，进行深度优先搜索，然后再进行回溯，直到结果为true或者无路可走为止

>代码

```go

var status = false
func exist(board [][]byte, word string) bool {
    status = false
    for i := 0; i < len(board); i++ {
        for j := 0; j < len(board[i]); j++ {
            if board[i][j] == word[0] {
                board[i][j] = '*'
                find(i, j, board, word, 1)
                board[i][j] = word[0]    
            }
        }
    }
    return status
}

func find(i, j int, board [][]byte, word string, k int) {
    if k == len(word) || status {
        status = true
        return
    }
    if i-1 >= 0 && board[i-1][j] == word[k] {
        board[i-1][j] = '*'
        find(i-1, j, board, word, k+1)
        board[i-1][j] = word[k]
    }
    if j-1 >= 0 && board[i][j-1] == word[k] {
        board[i][j-1] = '*'
        find(i, j-1, board, word, k+1)
        board[i][j-1] = word[k]
    }
    if i+1 < len(board) && board[i+1][j] == word[k] {
        board[i+1][j] = '*'
        find(i+1, j, board, word, k+1)
        board[i+1][j] = word[k]
    }
    if j+1 < len(board[i]) && board[i][j+1] == word[k] {
        board[i][j+1] = '*'
        find(i, j+1, board, word, k+1)
        board[i][j+1] = word[k]
    }

}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.5MB, 在所有 Go 提交中击败了94.57%的用户
