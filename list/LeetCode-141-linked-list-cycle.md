# LeetCode-141-linked-list-cycle

>题目链接

[LeetCode-141-linked-list-cycle](https://leetcode-cn.com/problems/linked-list-cycle/)

>思路

快慢指针，快指针如果追上了慢指针，则存在环


>代码

```go
func hasCycle(head *ListNode) bool {
	if head==nil||head.Next==nil{
		return false
	}
	slow:=head
	fast:=head.Next
	for fast !=nil && fast.Next!=nil {
		if slow == fast {
			return true
		}

		fast = fast.Next.Next
		slow = slow.Next
	}
	return  false
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结


执行用时 :4 ms, 在所有 Go 99.22%的用户

内存消耗 :3.8 MB, 在所有 Go 提交中击败了56.79%的用户
