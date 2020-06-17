# LeetCode-40-combination-sum-ii

>题目链接

[LeetCode-40-combination-sum-ii](https://leetcode-cn.com/problems/combination-sum-ii/)

>思路

见注释

>代码

```go

func combinationSum2(candidates []int, target int) [][]int {
    sort.Ints(candidates)
    var ans [][]int
    backtrack(candidates, target, 0, []int{}, &ans)
    return ans
}

func backtrack(candidates []int, target, index int, path []int, ans *[][]int) {
    // 退出条件
    if target == 0 {
        *ans = append(*ans, path)
        return
    }
    n := len(candidates)
    for i := index; i < n; i++ {
        // 剪枝
        if candidates[i] > target {
            return
        }
        // 去除多余的重复项（调整当前层的选择进度即可，下层需要继续可选）
        rawI := i
        for i < n - 1 && candidates[i] == candidates[i+1] {
            i++
        }
        // 作出选择
        newPath := make([]int, len(path))
        copy(newPath, path)
        newPath = append(newPath, candidates[i])
        backtrack(candidates, target-candidates[i], rawI+1, newPath, ans)
        // 撤回选择

    }
}

```

>复杂度分析

时间复杂度：O(2^n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.6MB, 在所有 Go 提交中击败了100.00%的用户
