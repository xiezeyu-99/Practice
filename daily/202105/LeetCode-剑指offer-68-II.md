# LeetCode-剑指offer-68-II

>题目链接

[LeetCode-剑指offer-68-II](https://leetcode-cn.com/problems/er-cha-shu-de-zui-jin-gong-gong-zu-xian-lcof/)

> 思路

递归

>代码

```go

 func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
    if root == nil {
        return nil
    }
    if root == p || root == q {
        return root
    }

    leftNode := lowestCommonAncestor(root.Left, p, q)

    rightNode := lowestCommonAncestor(root.Right, p, q)
    if leftNode != nil && rightNode != nil {
        return root
    }
    if leftNode == nil {
        return rightNode
    }
    return leftNode
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了91.04%的用户

内存消耗 :7.6MB, 在所有 Go 提交中击败了95.93%的用户
