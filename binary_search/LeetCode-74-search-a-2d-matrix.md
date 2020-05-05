# LeetCode-74-search-a-2d-matrix

> 题目链接

[LeetCode-74-search-a-2d-matrix](https://leetcode-cn.com/problems/search-a-2d-matrix/)

> 思路

把二维数组展开成一维数组，然后用二分法查找


> 代码

```go

func searchMatrix(matrix [][]int, target int) bool {
    if len(matrix) == 0 || len(matrix[0]) == 0{
        return false
    }
    if len(matrix) == 1 && len(matrix[0]) == 1{
        if matrix[0][0] == target {
            return true
        } else {
            return false
        }
    }
    row,column:=len(matrix),len(matrix[0])
    start,end:=0,row*column-1
    for start <=end{
        mid:=(end-start)>>2+start
        i:= int(mid/column)
        j:= int(mid%column)
        if matrix[i][j] == target{
            return true
        } else if matrix[i][j] > target {
            end = mid-1
        } else if matrix[i][j] < target {
            start = mid+1
        }
    }
    return false

}



```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了79.7%的用户

内存消耗 :3.8 MB, 在所有 Go 提交中击败了100.00%的用户

