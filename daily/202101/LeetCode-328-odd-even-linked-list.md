#  LeetCode-328-odd-even-linked-list

>题目链接

[LeetCode-328-odd-even-linked-list](https://leetcode-cn.com/problems/odd-even-linked-list/)

>思路

设定插入点，然后向后遍历找到奇数点的前一个节点，移动到插入点去

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func oddEvenList(head *ListNode) *ListNode {
    if head == nil || head.Next == nil || head.Next.Next == nil {
        return head
    }

    node := head.Next
    pos := head
    for node!=nil&&node.Next != nil {
        nNext := node.Next.Next
        pNext := pos.Next
        pos.Next = node.Next
        node.Next.Next = pNext
        node.Next = nNext
        pos = pos.Next
        node = nNext
    }
    return  head
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了87.20%的用户
 
内存消耗 :3.2MB, 在所有 Go 提交中击败了59.98%的用户
