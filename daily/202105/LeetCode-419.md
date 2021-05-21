# LeetCode-419

>题目链接

[LeetCode-419](https://leetcode-cn.com/problems/battleships-in-a-board/)

> 思路



>代码

```go

func countBattleships(board [][]byte) int {
    lenthA := len(board)
    lenthB := len(board[0])
    count := 0
    for i:=0;i<lenthA;i++{
        for j:=0;j<lenthB;j++{
            if board[i][j] == 'X' {
                if i > 0 && board[i - 1][j] == 'X' || j > 0 && board[i][j - 1] == 'X'{
                    continue
                }
                count++
            }
        }
    }
    return count
}



```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了25.92%的用户
