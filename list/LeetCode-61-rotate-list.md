# LeetCode-61-rotate-list

>题目链接

[LeetCode-61-rotate-list](https://leetcode-cn.com/problems/rotate-list/)

>思路

找出头尾节点，然后头尾相连形成环，题目要求向右旋转，即反向查找，环形链表可以通过正向查找来达到反向查找相同的效果，正向查找的次数可以通过链表长度和k值计算得出，找到相对应的位置后，断开尾节点的Next

>代码

```go
func rotateRight(head *ListNode, k int) *ListNode {
	if k == 0 || head == nil || head.Next == nil {
		return head
	}

	tail := head
	len := 1
	for tail.Next != nil {
		len++
		tail = tail.Next
	}
	tail.Next = head

	var x int
	if len > k {
		x = len - k
	} else {
		x = len - k%len
	}
	for i := 1; i <= x; i++ {
		head = head.Next
		tail = tail.Next
	}
	tail.Next = nil

	return head
}
```

>复杂度分析

时间复杂度：固定遍历一次链表，复杂度为O(n)；移动头部节点，移动的次数少于或等于链表长度，均摊时间复杂度O(n)；所以总的时间复杂度是O(n)

空间复杂度：O(1)

>总结


执行用时 :4 ms, 在所有 Go 提交中击败了70.62%的用户

内存消耗 :2.5 MB, 在所有 Go 提交中击败了100.00%的用户
