# LeetCode-103-binary-tree-zigzag-level-order-traversal
>题目链接

[LeetCode-103-binary-tree-zigzag-level-order-traversal](https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal/)

>思路

广度优先遍历，然后遍历出来的元素，按遍历的层数，分别从数组的头部和尾部开始插入

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
func zigzagLevelOrder(root *TreeNode) [][]int {
    var res [][]int
    if root == nil {
        return res
    }
    queue := make([]*TreeNode, 0)
    queue = append(queue, root)
    isLeftStart := true
    for len(queue) > 0 {
        l := len(queue)
        ans := make([]int, l)
        for i := 0; i < l; i++ {
            node := queue[i]
            if node.Left != nil {
                queue = append(queue, node.Left)
            }
            if node.Right != nil {
                queue = append(queue, node.Right)
            }
            if isLeftStart {
                ans[i] = node.Val
            } else {
                ans[l-i-1] = node.Val
            }
        }
        res = append(res, ans)
        isLeftStart = !isLeftStart
        queue = queue[l:]
    }
    return res
}




```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了19.11%的用户
