# LeetCode-24-swap-nodes-in-pairs

> 题目链接

[LeetCode-24-swap-nodes-in-pairs](https://leetcode-cn.com/problems/swap-nodes-in-pairs/)

> 思路

记录前驱节点以及要交换的两个节点，然后不断交换以及后移


> 代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func swapPairs(head *ListNode) *ListNode {
    if head == nil || head.Next == nil {
        return head
    }
    empty:=&ListNode{
        Val:0,
        Next:head,
    }

    list1 := empty
    list2:=head
    list3:=head.Next

    for list3!=nil {
        list1.Next = list3
        list2.Next = list3.Next
        list3.Next = list2

        list2,list3 = list3,list2

        if list3.Next !=nil && list3.Next.Next!=nil {
            list1 = list1.Next.Next
            list2 = list2.Next.Next
            list3 = list3.Next.Next
        } else {
            break
        }      
    }
    return empty.Next
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1 MB, 在所有 Go 提交中击败了20.00%的用户

