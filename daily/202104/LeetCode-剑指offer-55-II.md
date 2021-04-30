# LeetCode-剑指offer-55-II

>题目链接

[LeetCode-剑指offer-55-II](https://leetcode-cn.com/problems/ping-heng-er-cha-shu-lcof/)

> 思路

dfs计算深度，不平衡返回-1

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
func isBalanced(root *TreeNode) bool {
    return deep(root) != -1
}

func deep(root *TreeNode) int {
    if root == nil {
        return 0
    }
    left:=deep(root.Left)
    if left == -1 {
        return -1
    }
    right:=deep(root.Right)
    if right == -1 {
        return -1
    }
    if left - right > 1 || right - left > 1 {
        return -1
    }
    if left > right {
        return left + 1
    } else {
        return right + 1
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了84.88%的用户

内存消耗 :5.7MB, 在所有 Go 提交中击败了87.24%的用户
