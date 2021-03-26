# LeetCode-剑指offer-18

>题目链接

[LeetCode-剑指offer-18](https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/)

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
func deleteNode(head *ListNode, val int) *ListNode {
    empty := &ListNode{
        Next: head,
    }
    node:=empty
    for node.Next != nil {
        if node.Next.Val == val {
            node.Next = node.Next.Next
            break
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

执行用时 :4ms, 在所有 Go 提交中击败了82.88%的用户

内存消耗 :2.8MB, 在所有 Go 提交中击败了16.92%的用户
