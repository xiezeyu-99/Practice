#  LeetCode-237-delete-node-in-a-linked-list

>题目链接

[LeetCode-237-delete-node-in-a-linked-list](https://leetcode-cn.com/problems/delete-node-in-a-linked-list/)

>思路

由于无法访问前一个节点，因此把要删除的节点的值改为下一个节点的值，然后删除下一个节点

>代码

```go

 /**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteNode(node *ListNode) {
    node.Val = node.Next.Val
    node.Next = node.Next.Next
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了78.15%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了55.21%的用户
