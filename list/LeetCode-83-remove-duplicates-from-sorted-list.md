# LeetCode-83-remove-duplicates-from-sorted-list

>题目链接

[LeetCode-83-remove-duplicates-from-sorted-list](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/)

>思路

遍历链表，下一个节点与当前节点值相同的，就把当前节点连到下下个节点去


>代码

```go
func deleteDuplicates(head *ListNode) *ListNode {
	node:= head
	for node !=nil {
		if node.Next!=nil&&node.Val==node.Next.Val {
			node.Next = node.Next.Next
		} else {
			node = node.Next
		}
	}
	return head
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结


执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.1 MB, 在所有 Go 提交中击败了75.00%的用户
