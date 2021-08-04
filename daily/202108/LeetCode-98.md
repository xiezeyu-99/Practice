# LeetCode-98

>题目链接

[LeetCode-98](https://leetcode-cn.com/problems/validate-binary-search-tree/)

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
func isValidBST(root *TreeNode) bool {
    return dfs(root, math.MinInt32,math.MaxInt32)
}

func dfs(root *TreeNode, min,max int) bool{
    if root == nil {
        return true
    }
    if root.Val<=min||root.Val>=max{
        return false
    }

    return dfs(root.Left, min, root.Val)&&dfs(root.Right, root.Val, max)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
