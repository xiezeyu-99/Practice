# LeetCode-104-maximum-depth-of-binary-tree

> 题目链接

[LeetCode-104-maximum-depth-of-binary-tree](https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/)

> 思路

递归遍历，求出左右子树中深度最大的值返回，直到节点为空

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
func maxDepth(root *TreeNode) int {
    if root==nil{
        return 0
    }
    leftDepth,rightDepth:=0,0
    if root.Left!=nil{
        leftDepth = maxDepth(root.Left)
    }
    if root.Right!=nil{
        rightDepth = maxDepth(root.Right)
    } 
    if leftDepth > rightDepth{
        return leftDepth+1
    } else {
        return rightDepth+1
    }
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

> 总结

执行用时 :4ms, 在所有 Go 提交中击败了92.55%的用户

内存消耗 :4.4MB, 在所有 Go 提交中击败了66.67%的用户

