# LeetCode-25

>题目链接

[LeetCode-25](https://leetcode-cn.com/problems/reverse-nodes-in-k-group/)

> 思路

先把要反转的头尾节点找到，然后进行反转

>代码

```go


/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reverseKGroup(head *ListNode, k int) *ListNode {
    hair:=&ListNode{
        Next:head,
    }
    node := hair

    for node != nil {
        head = node.Next
        tail := node
        for i:=0;i<k;i++{
            if tail.Next == nil{
                return hair.Next
            }
            tail = tail.Next
        }
        head,tail = reverse(head, tail)
        node.Next = head
        node = tail
    }
    return hair.Next
}

func reverse(head, tail *ListNode) (*ListNode, *ListNode) {
   cur:= head
   pre:=tail.Next

   for tail != pre {
       next := cur.Next
       cur.Next = pre       
       pre = cur
       cur = next
   }
   return tail, head
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
