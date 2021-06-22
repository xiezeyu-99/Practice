# LeetCode-面试题04.08

>题目链接

[LeetCode-面试题04.08](https://leetcode-cn.com/problems/first-common-ancestor-lcci/)

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
func lowestCommonAncestor(root *TreeNode, p *TreeNode, q *TreeNode) *TreeNode {
    if root == nil {
        return nil
    }
    if root == p || root == q {
        return root
    }

    left:=lowestCommonAncestor(root.Left,p,q)

    right:=lowestCommonAncestor(root.Right,p,q)

    if left != nil && right != nil{
        return root
    } else if left !=nil{
        return left
    } else if right !=nil{
        return right
    } else {
        return nil
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了56.15%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
