#  LeetCode-206-reverse-linked-list

>题目链接

[LeetCode-206-reverse-linked-list](https://leetcode-cn.com/problems/reverse-linked-list/)

>思路

记下前一个节点，然后把当前节点的next指向前一个节点，然后往前遍历

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reverseList(head *ListNode) *ListNode {
   
   var pre *ListNode
   for head!=nil{
       next := head.Next
       head.Next = pre
       pre = head
       head = next
   }
   return pre
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了53.6%的用户
