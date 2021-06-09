# LeetCode-面试题02.08

>题目链接

[LeetCode-面试题02.08](https://leetcode-cn.com/problems/linked-list-cycle-lcci/)

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
func detectCycle(head *ListNode) *ListNode {
    slow,fast:=head,head
    for fast != nil && fast.Next !=nil {
        slow = slow.Next
        fast = fast.Next.Next
        if slow == fast {
            slow = head 
            for slow != fast {
                slow = slow.Next
                fast = fast.Next
            }
            return slow
        }
    }
    return nil
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.7MB, 在所有 Go 提交中击败了61.62%的用户
