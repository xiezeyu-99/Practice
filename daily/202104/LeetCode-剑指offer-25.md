# LeetCode-剑指offer-25

>题目链接

[LeetCode-剑指offer-25](https://leetcode-cn.com/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/)

> 思路


>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeTwoLists(l1 *ListNode, l2 *ListNode) *ListNode {
    head:=&ListNode{}
    node:=head
    for l1!=nil&&l2!=nil{
        if l1.Val<l2.Val {
            node.Next = l1
            l1 = l1.Next
        } else {
            node.Next = l2
            l2 = l2.Next
        }
        node = node.Next
    }
    if l1!=nil{
        node.Next = l1
    } else {
        node.Next = l2
    }
    return head.Next
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了74.45%的用户

内存消耗 :4.1MB, 在所有 Go 提交中击败了93.24%的用户
