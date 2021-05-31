# LeetCode-面试题01.08

>题目链接

[LeetCode-面试题01.08](https://leetcode-cn.com/problems/zero-matrix-lcci/)

> 思路

使用第一列和第一行标记0，格外使用两个变量标记第一列和第一行是否本身有0

>代码

```go

func setZeroes(matrix [][]int) {
    n, m := len(matrix), len(matrix[0])
    row0, col0 := false, false
    for _, v := range matrix[0] {
        if v == 0 {
            row0 = true
            break
        }
    }
    for _, r := range matrix {
        if r[0] == 0 {
            col0 = true
            break
        }
    }
    for i := 1; i < n; i++ {
        for j := 1; j < m; j++ {
            if matrix[i][j] == 0 {
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }
    }
    for i := 1; i < n; i++ {
        for j := 1; j < m; j++ {
            if matrix[i][0] == 0 || matrix[0][j] == 0 {
                matrix[i][j] = 0
            }
        }
    }
    if row0 {
        for j := 0; j < m; j++ {
            matrix[0][j] = 0
        }
    }
    if col0 {
        for _, r := range matrix {
            r[0] = 0
        }
    }
}



```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了68.66%的用户

内存消耗 :6.2MB, 在所有 Go 提交中击败了58.99%的用户
