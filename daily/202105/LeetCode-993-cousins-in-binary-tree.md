# LeetCode-993-cousins-in-binary-tree

>题目链接

[LeetCode-993-cousins-in-binary-tree](https://leetcode-cn.com/problems/cousins-in-binary-tree/)

> 思路

深度优先，找到父节点和深度

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
func isCousins(root *TreeNode, x, y int) bool {
    var xParent, yParent *TreeNode
    var xDepth, yDepth int
    var xFound, yFound bool

    var dfs func(node, parent *TreeNode, depth int)
    dfs = func(node, parent *TreeNode, depth int) {
        if node == nil {
            return
        }

        if node.Val == x {
            xParent, xDepth, xFound = parent, depth, true
        } else if node.Val == y {
            yParent, yDepth, yFound = parent, depth, true
        }

        // 如果两个节点都找到了，就可以提前退出遍历
        // 即使不提前退出，对最坏情况下的时间复杂度也不会有影响
        if xFound && yFound {
            return
        }

        dfs(node.Left, node, depth+1)

        if xFound && yFound {
            return
        }

        dfs(node.Right, node, depth+1)
    }
    dfs(root, nil, 0)

    return xDepth == yDepth && xParent != yParent
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了95.93%的用户
