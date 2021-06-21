# LeetCode-面试题04.06

>题目链接

[LeetCode-面试题04.06](https://leetcode-cn.com/problems/successor-lcci/)

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

func inorderSuccessor(root *TreeNode, p *TreeNode) *TreeNode {
    flag :=false
    var res *TreeNode
    var f func(root *TreeNode)

    f = func(root *TreeNode) {
        if root != nil && res == nil {
        f(root.Left)
        if root == p {
            flag = true
        } else if flag {
            res = root
            flag = false //防止修改
            return
        }
        f(root.Right)
        }
    }
    f(root)
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.35%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
