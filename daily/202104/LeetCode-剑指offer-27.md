# LeetCode-剑指offer-27

>题目链接

[LeetCode-剑指offer-27](https://leetcode-cn.com/problems/er-cha-shu-de-jing-xiang-lcof/)

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


func mirrorTree(root *TreeNode) *TreeNode {
    if root == nil {
        return root
    }
    root.Left, root.Right = root.Right, root.Left
    mirrorTree(root.Left)
    mirrorTree(root.Right)
    return root
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
