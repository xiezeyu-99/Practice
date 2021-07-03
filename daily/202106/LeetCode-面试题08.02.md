# LeetCode-面试题08.02

>题目链接

[LeetCode-面试题08.02](https://leetcode-cn.com/problems/robot-in-a-grid-lcci/)

> 思路


>代码

```go


func pathWithObstacles(obstacleGrid [][]int) [][]int {
    var (
        ans [][]int
        r int = len(obstacleGrid) - 1
        c int = len(obstacleGrid[0]) - 1
        f func([][]int)
    )
    f = func(path [][]int) {
        if len(ans) == 0 {
            i, j := path[len(path) - 1][0], path[len(path) - 1][1]
            if obstacleGrid[i][j] == 0 {
                obstacleGrid[i][j] = 1
                if j < c {
                    f(append(path, []int{i, j + 1}))
                }
                if i < r {
                    f(append(path, []int{i + 1, j}))
                }
                if i == r && j == c{
                    ans = make([][]int, r + c + 1)
                    copy(ans, path)
                }
            }
        }
    }
    f([][]int{{0, 0}})
    return ans
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
