# LeetCode-59-spiral-matrix-ii
>题目链接

[LeetCode-59-spiral-matrix-ii](https://leetcode-cn.com/problems/spiral-matrix-ii/)

>思路

定下左右以及上下边界，顺时针遍历，每遍历一条边就缩短一次边界

>代码

```go

func generateMatrix(n int) [][]int {
    result:=[][]int{}
    for i:=0;i<n;i++{
        result=append(result,make([]int,n))
    }
    
    size:=n*n
    a,b:=0,n-1      //左右边界
    c,d:=0,n-1      //上下边界

    idx:=1
    for idx<=size{
        //向右走
        for i:=a;i<=b;i++{
            result[c][i]=idx
            idx++
        }
        c++     //上边界收缩
        //向下走
        for i:=c;i<=d;i++{
            result[i][b]=idx
            idx++
        }
        b--     //右边界收缩
        //向左走
        for i:=b;i>=a;i--{
            result[d][i]=idx
            idx++
        }
        d--     //。。。
        //向上走
        for i:=d;i>=c;i--{
            result[i][a]=idx
            idx++
        }
        a++     //。。。
    }
    return result
}




```

>复杂度分析

时间复杂度：O(n*n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了90.00%的用户
