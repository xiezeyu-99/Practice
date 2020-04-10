# LeetCode-86-partition-list

> 题目链接

[LeetCode-86-partition-list](https://leetcode-cn.com/problems/partition-list/)

> 思路

先找到第一个大于等于x的值，作为插入点，然后从这里继续遍历，找到小于x的值，移动到插入点后面去，然后插入点前移

> 代码

```go
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func partition(head *ListNode, x int) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}
	newHead := &ListNode{
		Val:  0,
		Next: nil,
	}
	newHead.Next = head
	var flagNode *ListNode //插入点

	node := newHead
	for node.Next != nil {
		if flagNode == nil && node.Next.Val >= x {
			flagNode = node
			break
		}
		node = node.Next
	}

	if flagNode == nil {
		return newHead.Next
	}

	loopNode := flagNode
	for loopNode != nil && loopNode.Next != nil {
		if loopNode.Next.Val < x {
			flagNext := flagNode.Next
			loopNextNext := loopNode.Next.Next

			flagNode.Next = loopNode.Next
			loopNode.Next.Next = flagNext
			loopNode.Next = loopNextNext

			flagNode = flagNode.Next

		} else {
			loopNode = loopNode.Next
		}

	}

	return newHead.Next

}
```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(1)

> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户
内存消耗 :2.4 MB, 在所有 Go 提交中击败了100.00%的用户


