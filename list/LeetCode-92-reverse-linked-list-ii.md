# LeetCode-92-reverse-linked-list-ii

>题目链接

[LeetCode-92-reverse-linked-list-ii](https://leetcode-cn.com/problems/reverse-linked-list-ii/)

>思路

1.创建哨兵节点，处理m=1的情况

2.遍历链表，找到第m-1个节点,固定

3.从第m个节点开始，用头插法反转链表，每次将遍历的当前节点插入开始反转的位置（位置m），直到n结束

>代码

```go
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reverseBetween(head *ListNode, m int, n int) *ListNode {
	if m == n {
		return head
	}
	resultList := &ListNode{
        Val:0,
        Next:head,
    }

	for i := 1; i < m; i++ {
		resultList = resultList.Next
	}

	p := resultList.Next
	pNext := p.Next
	for i := m; i < n; i++ {
		p.Next = pNext.Next;
        pNext.Next = resultList.Next;
        resultList.Next = pNext;
        pNext = p.Next;
	}
	if m == 1 {
		return resultList.Next;
    } else {
		return head;
	}
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结


执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1 MB, 在所有 Go 提交中击败了100.00%的用户
