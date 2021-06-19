# LeetCode-面试题04.04

>题目链接

[LeetCode-面试题04.04](https://leetcode-cn.com/problems/check-balance-lcci/)

> 思路


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
    if root == nil {
        return true
    }
    return abs(height(root.Left) - height(root.Right)) <= 1 && isBalanced(root.Left) && isBalanced(root.Right)
}

func height(root *TreeNode) int {
    if root == nil {
        return 0
    }
    return max(height(root.Left), height(root.Right)) + 1
}

func max(x, y int) int {
    if x > y {
        return x
    }
    return y
}

func abs(x int) int {
    if x < 0 {
        return -1 * x
    }
    return x
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
