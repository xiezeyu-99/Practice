# LeetCode-148-sort-list

> 题目链接

[LeetCode-148-sort-list](https://leetcode-cn.com/problems/sort-list/)

> 思路

用递归实现归并排序


> 代码

```go

func sortList(head *ListNode) *ListNode {
 
    if head == nil || head.Next == nil {
        return head
    }
    slow, quick := head, head
    for slow.Next != nil && quick.Next != nil && quick.Next.Next != nil {
        slow = slow.Next
        quick = quick.Next.Next
    }
 
    n := slow.Next
    slow.Next = nil
 
    node := merge(sortList(head), sortList(n))
    return node
}
 
func merge(node1, node2 *ListNode) *ListNode {
    head := &ListNode{}
    current := head
    for node1 != nil && node2 != nil {
        if node1.Val <= node2.Val {
            current.Next = node1
            node1 = node1.Next
        } else {
            current.Next = node2
            node2 = node2.Next
        }
        current = current.Next
    }
 
    if node1 == nil {
        current.Next = node2
    } else if node2 == nil {
        current.Next = node1
    }
    return head.Next
}

```

> 复杂度分析

时间复杂度：O(nlogn)

空间复杂度：因为合并链表时，除了头节点，其余节点都是指向原链表的节点地址，所以空间复杂度是O(1)

> 总结

执行用时 :12 ms, 在所有 Go 提交中击败了92.75%的用户
内存消耗 :5.1 MB, 在所有 Go 提交中击败了100.00%的用户

