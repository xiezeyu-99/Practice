# LeetCode-160-intersection-of-two-linked-lists

>题目链接

[LeetCode-160-intersection-of-two-linked-lists](https://leetcode-cn.com/problems/intersection-of-two-linked-lists/)

>思路

先计算两个链表的长度，然后把长的链表从头削减到和短链表长度一样，然后开始同步遍历

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
    nodeA:=&ListNode{
        Next:headA,
    }
    countA:=0
    for nodeA.Next!=nil{
        countA++   
        nodeA = nodeA.Next
    }

    nodeB:=&ListNode{
        Next:headB,
    }
    countB:=0
    for nodeB.Next!=nil{
        countB++
        nodeB = nodeB.Next    
    }
    if nodeA != nodeB{
        return nil
    }

    if countA > countB{
        for i:=0;i<countA-countB;i++{
            headA = headA.Next
        }
    } else if countA < countB {
        for i:=0;i<countB-countA;i++{
            headB = headB.Next
        }
    }

    for headA!=nil && headB!=nil{
        if headA == headB {
            return headA
        }
        headA = headA.Next
        headB = headB.Next
    }

    return nil
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :40ms, 在所有 Go 提交中击败了89.57%的用户
 
内存消耗 :7.7MB, 在所有 Go 提交中击败了50.78%的用户
