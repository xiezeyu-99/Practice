# LeetCode-199-binary-tree-right-side-view

>题目链接

[LeetCode-199-binary-tree-right-side-view](https://leetcode-cn.com/problems/binary-tree-right-side-view/)

>思路

深度优先遍历，先遍历右节点

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
 var res []int

 func rightSideView(root *TreeNode) []int {
     res = []int{}
     dfs(root, 1)
     return res
 }
 
 func dfs(root *TreeNode, level int) {
     if root == nil {
         return
     }
 
     if level > len(res) {
         res = append(res, root.Val)
     }
 
     dfs(root.Right, level+1)
     dfs(root.Left, level+1)
 }

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了64.42%的用户
