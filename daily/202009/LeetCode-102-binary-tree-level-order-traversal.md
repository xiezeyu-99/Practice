# LeetCode-102-binary-tree-level-order-traversal

> 题目链接

[LeetCode-102-binary-tree-level-order-traversal](https://leetcode-cn.com/problems/binary-tree-level-order-traversal/)

> 思路

广度优先遍历

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
func levelOrder(root *TreeNode) [][]int {
    if root == nil {
        return [][]int{}
    }
    queue:=[]*TreeNode{root}
    ans:=[][]int{}

    for len(queue) > 0{
        temp:=[]int{}
        l:=len(queue)
        for i:=0;i<l;i++{
            node := queue[0]
            temp = append(temp, node.Val)
            queue = queue[1:]
            if node.Left!=nil {
                queue = append(queue,node.Left)
            }   

            if node.Right!=nil {
                queue = append(queue,node.Right)
            }
        }
        ans = append(ans, temp)
    }
    return ans
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.8 MB, 在所有 Go 提交中击败了32.7%的用户

