# LeetCode-剑指offer-52

>题目链接

[LeetCode-剑指offer-52](https://leetcode-cn.com/problems/liang-ge-lian-biao-de-di-yi-ge-gong-gong-jie-dian-lcof/)

> 思路

遍历链表，当到达尾部时，就重新回到另外一个链表的头部继续遍历，知道相遇

假设第一个链表长度LA+C，第二个长度LB+C，这样指针相遇时走过的长度是LA+C+LB，另外一个是LB+C+LA

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
     if headB == nil || headA == nil{
         return nil
     }
    a,b:=headA,headB
    for a!=b{
        if a==nil{
            a = headB
        } else if b==nil{
            b = headA
        } else {
            a = a.Next
            b = b.Next
        }
    }
    return a
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了82.05%的用户

内存消耗 :5.3MB, 在所有 Go 提交中击败了70.84%的用户
