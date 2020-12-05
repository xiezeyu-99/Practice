#  LeetCode-236-lowest-common-ancestor-of-a-binary-tree

>题目链接

[LeetCode-236-lowest-common-ancestor-of-a-binary-tree](https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/)

>思路

只有从公共祖先出发，才有可能同时在左右子树中找到目标点

>代码

```go

 func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
    if root == nil {
        return nil
    }
    if root.Val == p.Val || root.Val == q.Val {
        return root
    }
    left := lowestCommonAncestor(root.Left, p, q)
    right := lowestCommonAncestor(root.Right, p, q)
    if left != nil && right != nil {
        return root
    }
    if left == nil {
        return right
    }
    return left
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了60.65%的用户
 
内存消耗 :7.5MB, 在所有 Go 提交中击败了61.05%的用户
