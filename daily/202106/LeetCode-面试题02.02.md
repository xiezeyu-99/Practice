# LeetCode-面试题02.02

>题目链接

[LeetCode-面试题02.02](https://leetcode-cn.com/problems/kth-node-from-end-of-list-lcci/)

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
func kthToLast(head *ListNode, k int) int {
    node:=head
    for i:=0;i<k-1;i++{
        node = node.Next
    }
    for node.Next!=nil {
        node = node.Next
        head = head.Next
    }
    return head.Val
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
