# LeetCode-面试题04.10

>题目链接

[LeetCode-面试题04.10](https://leetcode-cn.com/problems/check-subtree-lcci/)

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
func checkSubTree(t1 *TreeNode, t2 *TreeNode) bool {
    if t1 != nil && t2 != nil {
        return judge(t1,t2)||checkSubTree(t1.Left,t2)||checkSubTree(t1.Right,t2)
    }
    return false
}
func judge(t1,t2 *TreeNode) bool{
    if t2 == nil  {
        return true
    }
    if t1 == nil  {
        return false
    }
    return t1.Val == t2.Val&&judge(t1.Left,t2.Left)&&judge(t1.Right,t2.Right)
}





```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.006%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
