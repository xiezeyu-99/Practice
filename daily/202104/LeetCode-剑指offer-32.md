# LeetCode-剑指offer-32

>题目链接

[LeetCode-剑指offer-32](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-lcof/）

> 思路

用中间栈保存数据，在栈顶找对应元素，找不到就一直入栈

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
func levelOrder(root *TreeNode) []int {
    if root == nil {
        return []int{}
    }
    queue:=[]*TreeNode{root}
    res:=[]int{}
    for len(queue) > 0 {
        node:=queue[0]
        res = append(res, node.Val)
        queue = queue[1:]
        if node.Left!=nil{
            queue = append(queue, node.Left)
        }
        if node.Right!=nil{
            queue = append(queue, node.Right)
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

内存消耗 :2.6MB, 在所有 Go 提交中击败了81.55%的用户
