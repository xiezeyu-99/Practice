# LeetCode-剑指offer-55-I

>题目链接

[LeetCode-剑指offer-55-I](https://leetcode-cn.com/problems/er-cha-shu-de-shen-du-lcof/)

> 思路

递归

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
func maxDepth(root *TreeNode) int {
    if root == nil {
        return 0
    }

    left:=maxDepth(root.Left)
    right:=maxDepth(root.Right)

    if left > right{
        return left+1
    } else {
        return right+1
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了85.22%的用户
