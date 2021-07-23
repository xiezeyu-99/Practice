# LeetCode-面试题10.09

>题目链接

[LeetCode-面试题10.09](https://leetcode-cn.com/problems/sorted-matrix-search-lcci/)

> 思路

>代码

```go

func searchMatrix(matrix [][]int, target int) bool {
    i,j:=len(matrix)-1,0
    for i>=0 && j < len(matrix[i]){
        if matrix[i][j] == target {
            return true
        } else if matrix[i][j] < target  {
            j++
        } else if matrix[i][j] > target {
            i--
        }
    }
    return false
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
