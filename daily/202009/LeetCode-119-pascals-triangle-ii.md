# LeetCode-119-pascals-triangle-ii
>题目链接

[LeetCode-119-pascals-triangle-ii](https://leetcode-cn.com/problems/pascals-triangle-ii/)

>思路

动态规划

>代码

```go

func getRow(rowIndex int) []int {
    if rowIndex == 0 {
        return []int{1}
    }
    ans := [][]int{[]int{1}}

    for i := 1; i <= rowIndex; i++ {
        temp := []int{1}
        for j := 1; j < i+1; j++ {
            var t = 0
            if j < i {
                t = ans[i-1][j]
            }
            temp = append(temp, t+ans[i-1][j-1])
        }
        ans = append(ans, temp)
    }
    return ans[rowIndex]
}

```

>复杂度分析

时间复杂度：O(n^2)，n是行数

空间复杂度：O(n^2)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了21.82%的用户
