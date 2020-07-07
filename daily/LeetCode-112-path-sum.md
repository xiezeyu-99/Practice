# LeetCode-112-path-sum

> 题目链接

[LeetCode-112-path-sum](https://leetcode-cn.com/problems/path-sum/)

> 思路

递归遍历链表，计算节点的和


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
func hasPathSum(root *TreeNode, sum int) bool {
    if root == nil{
        return false
    }
    if root.Left==nil&&root.Right==nil {
        return sum == root.Val
    }
    return hasPathSum(root.Left,sum-root.Val) || hasPathSum(root.Right,sum-root.Val)
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：其中 H 是树的高度。空间复杂度主要取决于递归时栈空间的开销，最坏情况下，树呈现链状，空间复杂度为 O(N)。平均情况下树的高度与节点数的对数正相关，空间复杂度为 O(logN)


> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了75.65%的用户

内存消耗 :4.8 MB, 在所有 Go 提交中击败了66.67%的用户

