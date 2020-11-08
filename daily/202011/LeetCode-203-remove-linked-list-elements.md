#  LeetCode-203-remove-linked-list-elements

>题目链接

[LeetCode-203-remove-linked-list-elements](https://leetcode-cn.com/problems/remove-linked-list-elements/)

>思路

哨兵头减少代码复杂度

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeElements(head *ListNode, val int) *ListNode {
    empty:=&ListNode{
        Next:head,
    }
    node:=empty
    for node!=nil{
        for node.Next!=nil && node.Next.Val == val{
            node.Next = node.Next.Next
        }
        node = node.Next
    }
    return empty.Next
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了98.63%的用户
 
内存消耗 :4.6MB, 在所有 Go 提交中击败了71.80%的用户
