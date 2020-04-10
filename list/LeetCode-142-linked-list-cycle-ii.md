# LeetCode-142-linked-list-cycle-ii

>题目链接

[LeetCode-142-linked-list-cycle-ii](https://leetcode-cn.com/problems/linked-list-cycle-ii/)

>思路

1.快慢指针，快指针如果追上了慢指针，则存在环，如果遍历完了都没有相遇，则没有环。

2.假设有环的情况下，快慢指针相遇时，慢指针走的距离是x，那快指针走的距离就是2x，也就是从相遇点再走x，就能重新回到相遇点，设相遇点为p

3.基于2的结论，如果再设置两个速度相同的指针，一个从链表头出发，一个从p出发，都走了距离x之后，两个指针就都会同时到达p，由于p是在环内的，换言之，从链表头出发的指针在进入环的时候就会遇到另一个指针，因此两个指针相遇的点就是开始入环的第一个节点


>代码

```go
func detectCycle(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return nil
	}

	if head.Next.Next == head {
		return head
	}
	slow:=head
	fast:=head

	for fast !=nil && fast.Next != nil{
		slow = slow.Next
		fast = fast.Next.Next
		if slow == fast {
			break
		}
	}

	if slow != fast {
		return nil
	}

	count:=0
	for head != slow {
		head = head.Next
		slow = slow.Next
		count++
	}
	return head
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结


执行用时 :4 ms, 在所有 Go 99.35%的用户

内存消耗 :3.8 MB, 在所有 Go 提交中击败了100.00%的用户
