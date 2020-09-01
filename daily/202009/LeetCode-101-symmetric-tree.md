# LeetCode-101-symmetric-tree

> 题目链接

[LeetCode-101-symmetric-tree](https://leetcode-cn.com/problems/symmetric-tree/)

> 思路

不断递归遍历树，比较左右位置对称的两个点

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

func isSymmetric(root *TreeNode) bool {
    if root == nil{
        return true
    }
    return check(root.Left, root.Right)
}

func check(left,right *TreeNode) bool{
    if left == nil && right == nil {
        return true
    }  
    if left != nil && right != nil {
        return (left.Val == right.Val)&&check(left.Left, right.Right)&&check(left.Right, right.Left)
    } else {
        return false
    }   
}

```

> 复杂度分析

时间复杂度：O(nlogn)

空间复杂度： O(1)


> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了75.26%的用户

内存消耗 :2.9 MB, 在所有 Go 提交中击败了100.00%的用户

