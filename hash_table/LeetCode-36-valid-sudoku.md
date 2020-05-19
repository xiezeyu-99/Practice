# LeetCode-36-valid-sudoku

>题目链接

[LeetCode-36-valid-sudoku](https://leetcode-cn.com/problems/valid-sudoku/)

>思路

1、用二进数保存状态，第n位是1代表数字n已出现（即1左移n位）

2、拿二进数和数独中的元素进行&运算，如果该元素已出现过，则结果就等于该元素，

3、拿二进数和数独元素进行 | 运算，则相当于把当前元素的值添加进二进制数中

4、用三个切片，分别保存行，列以及块的状态，其中块切片的key为i/3*3+j/3

>代码

```go

func isValidSudoku(board [][]byte) bool {
    data :=[3][9]int{}
    for i:=0;i< 9;i++{
        for j:=0;j<9;j++{
            if  board[i][j] == '.'{
                continue
            }
            val := 1<<int(board[i][j]-'0')
            if data[0][i]&val == val || data[1][j]&val == val || data[2][i/3*3+j/3]&val == val {
                return false
            }

            data[0][i] = data[0][i]|val
            data[1][j] = data[1][j]|val
            data[2][i/3*3+j/3] = data[2][i/3*3+j/3]|val
        }
    }
    return true
}

```

>复杂度分析

时间复杂度：O(1),

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.8MB, 在所有 Go 提交中击败了100.00%的用户
