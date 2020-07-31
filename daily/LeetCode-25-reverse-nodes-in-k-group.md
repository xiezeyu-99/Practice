# LeetCode-25-reverse-nodes-in-k-group

> 题目链接

[LeetCode-25-reverse-nodes-in-k-group](https://leetcode-cn.com/problems/reverse-nodes-in-k-group/)

> 思路

找出要反转的链表段的头尾，然后把头节点不断往尾节点后面移动


> 代码

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
    node:=hair
    for node!=nil{
        head:=node.Next
        tail:=node

        for i:=0;i<k;i++{      
            if tail.Next == nil  {          
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

func reverse(head,tail *ListNode) (*ListNode,*ListNode){
    p := head
    pre := tail.Next

    for tail != pre {
        next:=p.Next
        p.Next = pre
        pre = p
        p = next
    }
    return tail,head
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)


> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了92.25%的用户

内存消耗 :3.6 MB, 在所有 Go 提交中击败了100.00%的用户

