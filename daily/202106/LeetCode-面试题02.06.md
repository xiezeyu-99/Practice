# LeetCode-面试题02.06

>题目链接

[LeetCode-面试题02.06](https://leetcode-cn.com/problems/palindrome-linked-list-lcci/)

> 思路


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
    if head == nil {
        return true
    }

    ahead,cur,next,fast:=&ListNode{Next:head},head,head.Next,head

    for fast != nil && fast.Next !=nil {
        fast = fast.Next.Next
        cur.Next = ahead
        ahead,cur,next = cur,next,next.Next
        
    }
    
    var node1,node2 *ListNode
    if fast == nil {
        node1,node2=ahead,cur
    } else {
        node1,node2=ahead,next
    }

    for node2!=nil {
        if node1.Val != node2.Val{
            return false
        }
        node1 = node1.Next
        node2 = node2.Next
    }
    return true
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了87.90%的用户

内存消耗 :5.5MB, 在所有 Go 提交中击败了92.74%的用户
