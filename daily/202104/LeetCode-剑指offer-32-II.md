# LeetCode-剑指offer-32-II

>题目链接

[LeetCode-剑指offer-32-II](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/)

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
    queue := []*TreeNode{
        root,
    }
    res := [][]int{
        {root.Val},
    }

    for len(queue) > 0 {
        nextQueue := []*TreeNode{}
        nextRes := []int{}
        for j := 0; j < len(queue); j++ {
            if queue[j].Left != nil {
                nextQueue = append(nextQueue, queue[j].Left)
                nextRes = append(nextRes, queue[j].Left.Val)
            }
            if queue[j].Right != nil {
                nextQueue = append(nextQueue, queue[j].Right)
                nextRes = append(nextRes, queue[j].Right.Val)
            }

        }
        queue = nextQueue
        if len(nextQueue) > 0 {
            res = append(res, nextRes)
        }

    }
    return res

}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.8MB, 在所有 Go 提交中击败了91.67%的用户
