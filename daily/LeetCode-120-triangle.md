# LeetCode-120-triangle

>题目链接

[LeetCode-120-triangle](https://leetcode-cn.com/problems/triangle/)

>思路

用一个数组记录到达每个点的最短距离，然后一行一行的进行叠加，注意遍历状态数组时要从后面开始遍历，避免状态被前面的值改变

>代码

```go

func minimumTotal(triangle [][]int) int {
    status:=make([]int, len(triangle[len(triangle)-1]))
    status[0] = triangle[0][0]
    for i:=1;i<len(triangle);i++{
        for j:=len(triangle[i])-1;j>=0;j--{
            length1:=math.MaxInt32
            length2:=math.MaxInt32
            if j != len(triangle[i])-1{
                length1 = status[j]
            }
            if j!=0{
                length2 = status[j-1]
            }
            if length1 < length2 {
                status[j] = length1 + triangle[i][j]
            } else {
                status[j] = length2 + triangle[i][j]
            }
        }
    }
    min:=status[0]
    for _,v:=range status {
        if v<min{
            min = v
        }
    }
    return min
}



```

>复杂度分析

时间复杂度：O(n!)，n为三角形行数

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了95.04%的用户

内存消耗 :3.1MB, 在所有 Go 提交中击败了100.00%的用户
