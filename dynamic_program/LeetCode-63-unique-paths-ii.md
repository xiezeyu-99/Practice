# LeetCode-63-unique-paths-ii

>题目链接

[LeetCode-63-unique-paths-ii](https://leetcode-cn.com/problems/unique-paths-ii/)

>思路

把状态直接保存在原数组中，原数组为1的位置特殊处理为0，状态转移方程为status[x][y] = status[x][y-1] + status[x-1][y]

>代码

```go

func uniquePathsWithObstacles(obstacleGrid [][]int) int {
    if obstacleGrid[0][0] == 1 {
        return 0
    }
    row, clounm := len(obstacleGrid), len(obstacleGrid[0])
    
    obstacleGrid[0][0] = 1
    for i := 1; i < clounm; i++ {
        if obstacleGrid[0][i]==1 {
            obstacleGrid[0][i] = 0
        } else {
            obstacleGrid[0][i] = obstacleGrid[0][i-1]
        }
    }
    for i := 1; i < row; i++ {
        if obstacleGrid[i][0]==1 {
            obstacleGrid[i][0] = 0
        } else {
            obstacleGrid[i][0] = obstacleGrid[i-1][0]
        }
    }
    for x := 1; x < row; x++ {
        for y := 1; y < clounm; y++ {
            if obstacleGrid[x][y] != 1 {
                obstacleGrid[x][y] = obstacleGrid[x][y-1] + obstacleGrid[x-1][y]
            } else {
                obstacleGrid[x][y] = 0
            }

        }
    }
    return obstacleGrid[row-1][clounm-1]
}
```

>复杂度分析

时间复杂度：O(m*n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了100.00%的用户
