# LeetCode-剑指offer-32-III

>题目链接

[LeetCode-剑指offer-32-III](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-iii-lcof/)

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
func levelOrder(root *TreeNode) [][]int {
    if root == nil {
        return [][]int{}
    }
    res := [][]int{}
    queue := []*TreeNode{root}
    f := true

    for len(queue) > 0 {
        size := len(queue)
        r := make([]int, size)
        for i := 0; i < size; i++ {
            if f {
                r[i] = queue[i].Val
            } else {
                r[size-i-1] = queue[i].Val
            }
            if queue[i].Left != nil {
                queue = append(queue, queue[i].Left)
            }
            if queue[i].Right != nil {
                queue = append(queue, queue[i].Right)
            }
        }
        queue = queue[size:]
        f = !f
        res = append(res, r)
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00的用户

内存消耗 :2.8MB, 在所有 Go 提交中击败了74.49%的用户
