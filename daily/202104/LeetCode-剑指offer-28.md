# LeetCode-剑指offer-28

>题目链接

[LeetCode-剑指offer-28](https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof/)

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
func isSymmetric(root *TreeNode) bool {
    if root == nil {
        return true
    }
    return dfs(root.Left,root.Right)
}

func dfs(root1,root2 *TreeNode) bool {
    if root1 == nil && root2 == nil{
        return true
    }
    if root1==nil&&root2!=nil||root1!=nil&&root2==nil||root1.Val!=root2.Val{
        return false
    }
    return dfs(root1.Left,root2.Right)&&dfs(root1.Right,root2.Left)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了77.93%的用户

内存消耗 :2.9MB, 在所有 Go 提交中击败了100.00%的用户
