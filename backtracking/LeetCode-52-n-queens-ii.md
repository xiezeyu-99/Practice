# LeetCode-52-n-queens-ii

>题目链接

[LeetCode-52-n-queens-ii](https://leetcode-cn.com/problems/n-queens-ii/)

>思路

判断当前位置能否放皇后，如果可以就标记状态然后进入下一层，然后状态回溯，继续判断下一个位置

>代码

```go

var result int
func totalNQueens(n int) int {
    result = 0
    temp:=make([][]byte,n)
    for i:=0;i<n;i++{
        temp[i] = make([]byte,n)
        for j:=0;j<n;j++{
            temp[i][j] = '.'
        }
    }
    backTrack(n,0, temp)
    return result
}

func backTrack(n,row int,temp [][]byte){
    if row == n {
        result++
        return
    }

    for j:=0;j<n;j++ {
        if canPut(temp,row,j) {
            temp[row][j] = 'Q'
            backTrack(n,row+1,temp)
            temp[row][j] = '.'
        }
    }
}

func canPut(temp [][]byte,row,cloumn int) bool {
    left:=cloumn-1
    right:=cloumn+1
    lentemp:=len(temp)
    for i:=row-1;i>=0;i--{

        if temp[i][cloumn] == 'Q' {
            return false
        }

        if left>=0&&temp[i][left] == 'Q'{
            return false
        }
        if right<lentemp&&temp[i][right] == 'Q'{
            return false
        }
        left--
        right++
    }
    return true
}

```

>复杂度分析

时间复杂度：O(n！)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
