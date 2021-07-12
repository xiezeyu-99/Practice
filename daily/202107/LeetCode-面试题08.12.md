# LeetCode-面试题08.12

>题目链接

[LeetCode-面试题08.12](https://leetcode-cn.com/problems/eight-queens-lcci/)

> 思路


>代码

```go

func solveNQueens(n int) [][]string {

    res:=[][]string{}
    var check func(x, y int,data [][]byte) bool
    check = func(x, y int,data [][]byte) bool{
        left,right:=y-1,y+1
        for i:=x-1;i>=0;i--{
            if data[i][y] == 'Q'{
                return false
            }
            if left>=0&&data[i][left] == 'Q'{
                return false
            }
            if right<n&&data[i][right] == 'Q'{
                return false
            }
            left--
            right++
        }
        return true
    }

    var put func(x int, data [][]byte)
    put=func(x int,data [][]byte) {
        if x == n {
            temp:=[]string{}
            for i:=range data{
                temp = append(temp, string(data[i]))
            }
            res = append(res, temp)
            return
        }
        for i:=range data[x] {
            if check(x,i, data) {
                data[x][i] = 'Q'
                put(x+1, data)
                data[x][i] = '.'
            }
        }
    }

    data:=make([][]byte, n)
    for i:=range data{
        for j:=0;j<n;j++ {
            data[i] = append(data[i], '.')
        }
    }
    put(0, data)
    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
