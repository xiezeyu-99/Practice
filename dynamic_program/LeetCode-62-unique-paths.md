# LeetCode-62-unique-paths

>题目链接

[LeetCode-62-unique-paths](https://leetcode-cn.com/problems/unique-paths/)

>思路

用一个M*N的状态数组保存每一格的到达次数，状态转移方程为status[x][y] = status[x][y-1] + status[x-1][y]，初始化第一行和第一列为1之后，遍历格子

>代码

```go

func uniquePaths(m int, n int) int {
    status:=[][]int{}
    for i:=0;i<m;i++{
        s:=make([]int,n)
        for j:=0;j<n;j++{
            if i==0||j==0 {
                s[j] = 1
            }
        }
        status = append(status,s)
    }
    for x:=1;x<m;x++{
        for y:=1;y<n;y++ {
            status[x][y] = status[x][y-1] + status[x-1][y]
        }
    }
    return status[m-1][n-1]
}

```

>复杂度分析

时间复杂度：O(m*n)

空间复杂度：O(m*n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
