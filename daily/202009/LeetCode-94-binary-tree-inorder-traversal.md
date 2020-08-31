# LeetCode-94-binary-tree-inorder-traversal

> 题目链接

[LeetCode-94-binary-tree-inorder-traversal](https://leetcode-cn.com/problems/binary-tree-inorder-traversal/)

> 思路

中序遍历


> 代码

```go

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
 var ans []int
func inorderTraversal(root *TreeNode) []int {
    ans = []int{}
    mid(root)
    return ans
}

func mid(root *TreeNode) {
    if root == nil{
        return
    }
    if root.Left!=nil{
        mid(root.Left)
    }
    ans = append(ans,root.Val)
    if root.Right!=nil{
        mid(root.Right)
    }
}


```

> 复杂度分析

时间复杂度：O(nlogn)

空间复杂度： O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了100.00%的用户

