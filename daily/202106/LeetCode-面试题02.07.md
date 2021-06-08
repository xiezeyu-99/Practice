# LeetCode-面试题02.07

>题目链接

[LeetCode-面试题02.07](https://leetcode-cn.com/problems/intersection-of-two-linked-lists-lcci/)

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
func getIntersectionNode(headA, headB *ListNode) *ListNode { 
    nodeA,nodeB:=headA,headB
    for nodeA != nodeB {
        if nodeA == nil {
            nodeA = headB
        } else {
            nodeA = nodeA.Next
        }
        if nodeB == nil {
            nodeB = headA
        } else {
            nodeB = nodeB.Next
        }
    }
    return nodeB
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :40ms, 在所有 Go 提交中击败了91.00%的用户

内存消耗 :8.7MB, 在所有 Go 提交中击败了35.99%的用户
