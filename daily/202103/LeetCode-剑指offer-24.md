# LeetCode-剑指offer-24

>题目链接

[LeetCode-剑指offer-24](https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/)

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
func reverseList(head *ListNode) *ListNode {
    if head == nil{
        return head
    }
    nextNode:=head.Next
    var preNode *ListNode=nil
    for nextNode!=nil{
        head.Next = preNode
        preNode = head
        head = nextNode
        nextNode = nextNode.Next
    }
    head.Next = preNode
    return head
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了41.30%的用户
