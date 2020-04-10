# LeetCode-82-remove-duplicates-from-sorted-list-ii

> 题目链接

[LeetCode-82-remove-duplicates-from-sorted-list-ii](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list-ii/)

> 思路

找到重复开始的点固定，然后继续往下找到重复结束的点，连接开始点和结束点，注意开始设置的哨兵节点的值不要和原链表头节点相同

> 代码

```go
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteDuplicates(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}
	newHead := &ListNode{
		Val:  head.Val-1,
		Next: nil,
	}
	newHead.Next = head
	first := newHead //重复开始点
	last := newHead  //重复结束点

	node := newHead
	for node != nil {       
		if node.Next == nil || node.Val != node.Next.Val {
			if first != last {
				first.Next = last.Next
				last = first
			} else {
				first = node
				last = node
			}

		} else {
			last = node.Next
		}
		node = node.Next
	}

	return newHead.Next

}
```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(1)

> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了88.97%的用户
内存消耗 :3 MB, 在所有 Go 提交中击败了100.00%的用户


