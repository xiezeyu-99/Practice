# LeetCode-110-balanced-binary-tree
>题目链接

[LeetCode-110-balanced-binary-tree](https://leetcode-cn.com/problems/balanced-binary-tree/)

>思路

递归计算每个点的左右子树高度，并且判断是否平衡

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
 
func isBalanced(root *TreeNode) bool {
    ans := getHeight(root)
    return ans!=-1
}

func getHeight(root *TreeNode) int{
    if root == nil{
        return 0
    }

    leftH := getHeight(root.Left)

    rightH := getHeight(root.Right)

    if leftH - rightH > 1 || rightH - leftH > 1 || leftH == -1 || rightH == -1 {
        return -1
    }

    if leftH > rightH {
        return leftH+1
    } else {
        return rightH+1
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了99.31%的用户

内存消耗 :5.7MB, 在所有 Go 提交中击败了16.67%的用户
