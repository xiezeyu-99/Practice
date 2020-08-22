# LeetCode-77-combinations
>题目链接

[LeetCode-77-combinations](https://leetcode-cn.com/problems/combinations/)

>思路

通过回溯，考察每个数字选择以及不选择的情况，由于数字不能重复使用，因此下次递归时，循环起点要往前一位。又由于要保证有k个数，所以循环终点通过n-k+1来进行剪枝

>代码

```go

func combine(n int, k int) [][]int {
    var cur []int
    var ans [][]int
    dfs(cur, n, k, 1, &ans)
    return ans
}

func dfs(cur []int, n, k, idx int, ans *[][]int) {
    if k == 0 {
        *ans = append(*ans, append([]int{}, cur...))
        return
    }
    for i := idx; i <= n-k+1; i++ {
        cur = append(cur, i)
        dfs(cur, n, k-1, i+1, ans)
        cur = cur[:len(cur)-1]
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了95.62%的用户

内存消耗 :6.1MB, 在所有 Go 提交中击败了100.00%的用户
