# LeetCode-面试题04.05

>题目链接

[LeetCode-面试题04.05](https://leetcode-cn.com/problems/legal-binary-search-tree-lcci/)

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
func isValidBST(root *TreeNode) bool {
    return helper(root, math.MinInt64,math.MaxInt64)
}

func helper(root *TreeNode,lower,upper int) bool {
    if root == nil {
        return true
    }
    if root.Val<=lower||root.Val>=upper{
        return false
    }
    return helper(root.Left,lower,root.Val)&&helper(root.Right,root.Val,upper)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.35%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
