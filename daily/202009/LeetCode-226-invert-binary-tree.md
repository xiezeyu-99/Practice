# LeetCode-226-invert-binary-tree
>题目链接

[LeetCode-226-invert-binary-tree](https://leetcode-cn.com/problems/invert-binary-tree/)

>思路

递归，交换左右子树

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
func invertTree(root *TreeNode) *TreeNode {
    if root == nil {
        return root
    }
    root.Left, root.Right = root.Right, root.Left
    invertTree(root.Left)
    invertTree(root.Right)
    return root
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了25.56%的用户
