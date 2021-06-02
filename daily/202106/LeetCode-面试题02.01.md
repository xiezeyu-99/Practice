# LeetCode-面试题02.01

>题目链接

[LeetCode-面试题02.01](https://leetcode-cn.com/problems/remove-duplicate-node-lcci/)

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
func removeDuplicateNodes(head *ListNode) *ListNode {
    count:=make(map[int]bool)
    empty:=&ListNode{
        Next:head,
    }
    node:=empty
    for node.Next!=nil{
        if count[node.Next.Val] {
            node.Next = node.Next.Next
        } else {
            count[node.Next.Val] = true
            node = node.Next
        }
        
    }
    return head
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了96.50%的用户

内存消耗 :6.2MB, 在所有 Go 提交中击败了27.97%的用户
