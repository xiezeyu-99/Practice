# LeetCode-64-minimum-path-sum

>题目链接

[LeetCode-64-minimum-path-sum](https://leetcode-cn.com/problems/minimum-path-sum/)

>思路

动态规划，推断出到达每个格子的最短距离

>代码

```go

func minPathSum(grid [][]int) int {
    ans:=make([]int, len(grid[0]))
    ans[0] = grid[0][0]
    for i:=0;i<len(grid);i++{
        for j:=0;j<len(grid[0]);j++{
            if i == 0 && j > 0 {
                ans[j] = grid[i][j]+ans[j-1]
            } else if j == 0 && i > 0 {
                ans[j] = grid[i][j]+ans[j]
            } else if i > 0 && j > 0 {
                if ans[j-1] < ans[j] {
                    ans[j] = grid[i][j]+ans[j-1]
                } else {
                    ans[j] = grid[i][j]+ans[j]
                }
            }
        }
    }

    return ans[len(ans)-1]
}


```

>复杂度分析

时间复杂度：O(nm)

空间复杂度：O(m)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了89.86%的用户

内存消耗 :3.9MB, 在所有 Go 提交中击败了83.33%的用户
