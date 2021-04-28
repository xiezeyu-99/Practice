# LeetCode-剑指offer-54

>题目链接

[LeetCode-剑指offer-54](https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/)

> 思路

中序遍历，提前退出

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
var node []int
func kthLargest(root *TreeNode, k int) int {
    node = []int{}
    midForeach(root,k)
    return node[k-1]
}

func midForeach(root *TreeNode, k int) {
    if root.Right != nil {
        midForeach(root.Right, k)
    }
    if root !=  nil {
        node = append(node, root.Val)
        if len(node) == k {
            return 
        }
    }
    
    if root.Left != nil {
        midForeach(root.Left, k)
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了78.96%的用户

内存消耗 :6.3MB, 在所有 Go 提交中击败了86.95%的用户
