# LeetCode-面试题04.03

>题目链接

[LeetCode-面试题04.03](https://leetcode-cn.com/problems/list-of-depth-lcci/)

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
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func listOfDepth(tree *TreeNode) []*ListNode {
    if tree == nil {
        return nil
    }

    queue:=[]*TreeNode{tree}
    res:=[]*ListNode{}
    for len(queue) > 0 {
        length:=len(queue)

        head:= &ListNode{}
        node:=head
        for i:=0;i<length;i++ {
            node.Next=&ListNode{
                Val:queue[i].Val,
            }
            node = node.Next
            if queue[i].Left !=nil {
                queue = append(queue, queue[i].Left)
            }
            if queue[i].Right !=nil {
                queue = append(queue, queue[i].Right)
            }
        }
        res = append(res, head.Next)
        queue = queue[length:]
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
