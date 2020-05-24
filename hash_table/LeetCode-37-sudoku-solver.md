# LeetCode-37-sudoku-solver

>题目链接

[LeetCode-37-sudoku-solver](https://leetcode-cn.com/problems/sudoku-solver/)

>思路

记录下每行，每列以及每个大格中每个数字是否出现，然后一个个数字去尝试，当尝试失败时，则进行回溯


>代码

```go

func solveSudoku(board [][]byte) {
    row := [9][9]bool{}
    col := [9][9]bool{}
    box := [9][9]bool{}

    for i:=0;i<9;i++{
        for j:=0;j<9;j++{
            if board[i][j] != '.' {
                num:=board[i][j]-'1'
                row[i][num],col[j][num],box[i/3*3+j/3][num]=true,true,true
            }
        }
    }
    fill(board,0,row,col,box)
}

func fill(board [][]byte,n int,row,col,box [9][9]bool) bool {

    if n == 81 {
        return true
    }

    rowN,colN:=n/9,n%9
        boxN:=rowN/3*3+colN/3

    if board[rowN][colN] != '.' {
        return fill(board,n+1,row,col,box)
    }

    for num:=0;num<9;num++{
        if !row[rowN][num] && !col[colN][num] && !box[boxN][num]  {
            board[rowN][colN] = byte('1' + num)
            row[rowN][num],col[colN][num],box[boxN][num]=true,true,true
            if fill(board,n+1,row,col,box) {
                return true
            }
            board[rowN][colN] = '.'
            row[rowN][num],col[colN][num],box[boxN][num]=false,false,false
        }
    }
    return false
}

```

>复杂度分析

时间复杂度：这里的时间复杂性是常数由于数独的大小是固定的，因此没有 N 变量来衡量。

                     但是我们可以计算需要操作的次数：(9!)^9

                    我们考虑一行，即不多于 9 个格子需要填。

                    第一个格子的数字不会多于 9 种情况，

                    两个格子不会多于 9 ×8 种情况，

                    三个格子不会多于 9×8×7 种情况等等。

                    总之一行可能的情况不会多于 9! 种可能，

                    所有行不会多于 (9!)^9种情况。
                    
                    所以时间复杂度为O((9!)^9)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了100.00%的用户
