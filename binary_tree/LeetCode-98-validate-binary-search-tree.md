# LeetCode-98-validate-binary-search-tree

>题目链接

[LeetCode-98-validate-binary-search-tree](https://leetcode-cn.com/problems/validate-binary-search-tree/)

>思路

中间节点大小肯定是在左右节点之间，不断递归比较

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
    return check(root, math.MinInt64,math.MaxInt64)
}

func check(node *TreeNode,least,largest int) bool{
    if node == nil {
        return true
    }
    if node.Val <= least || node.Val >=largest {
        return false
    }
    return check(node.Left,least,node.Val)&&check(node.Right,node.Val,largest)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了78.32%的用户

内存消耗 :5.4MB, 在所有 Go 提交中击败了80.00%的用户
