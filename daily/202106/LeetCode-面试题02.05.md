# LeetCode-面试题02.05

>题目链接

[LeetCode-面试题02.05](https://leetcode-cn.com/problems/sum-lists-lcci/)

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
func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
    head:=&ListNode{}
    node:=head
    temp:=0
    for l1!=nil || l2!=nil {
        res:=temp
        if l1!=nil{
            res += l1.Val
            l1 = l1.Next
        }
        if l2!=nil{
            res += l2.Val
            l2 = l2.Next
        }
        node.Next = &ListNode{
            Val:res%10 ,
        }
        temp=res /10 
        node = node.Next
 
    }
    if temp != 0 {
        node.Next = &ListNode{Val: temp}
    }
    return head.Next
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了71.35%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了73.398%的用户
