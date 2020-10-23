# LeetCode-234-palindrome-linked-list

>题目链接

[LeetCode-234-palindrome-linked-list](https://leetcode-cn.com/problems/palindrome-linked-list/)

>思路

找中点，然后反转后半部分的链表，然后对比

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func isPalindrome(head *ListNode) bool {
	midNode:=getMidNode(head)
	second :=reverse(midNode.Next)

	s1,s2:=head,second
	for s1!=nil{
		if s1.Val!=s2.Val{
			return false
		}
		s1 = s1.Next
		s2 = s2.Next
	}
	return true
}

func getMidNode(node *ListNode) *ListNode{
	slow,fast:=node,node

	for fast.Next!=nil && fast.Next.Next !=nil{
		slow = slow.Next
		fast = fast.Next.Next
	}
	return slow
}

func reverse(node *ListNode) *ListNode{
	pre,cur:=nil,node

	for cur!=nil{
		nextNode:=cur.Next
		cur.Next = pre
		pre = cur
		cur = nextNode
	}
	return pre
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了93.51%的用户
 
内存消耗 :5.5MB, 在所有 Go 提交中击败了89.93%的用户
