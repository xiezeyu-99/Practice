# LeetCode-337-house-robber-iii
>题目链接

[LeetCode-337-house-robber-iii](https://leetcode-cn.com/problems/house-robber-iii/)

>思路

动态规划，一个点有选择与不选择两种情况

如果选择的话，子节点就一定不能选，那当前点所贡献的值就等于当前点的值加上不选择两个子节点时的值

如果不选择，那子节点可选可不选，当前点贡献的值就等于左右节点分别的最大值相加


>代码

```go

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func rob(root *TreeNode) int {
    val:=dfs(root)
    return max(val[0],val[1])
}

func dfs(root *TreeNode) []int {
    if root == nil {
        return []int{0,0}
    }

    l,r:=dfs(root.Left),dfs(root.Right)

    selected := root.Val + l[1] + r[1]
    notselected:= max(l[0],l[1]) + max(r[0],r[1])

    return []int{selected,notselected}
}

func max(a,b int) int {
    if a>b {
        return a
    } else {
        return b
    }
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了98.728%的用户

内存消耗 :5.8MB, 在所有 Go 提交中击败了16.67%的用户
