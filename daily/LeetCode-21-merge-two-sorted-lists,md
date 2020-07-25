# LeetCode-21-merge-two-sorted-lists

>题目链接

[LeetCode-21-merge-two-sorted-lists](https://leetcode-cn.com/problems/merge-two-sorted-lists/)

>思路

用一个哨兵作为开头链接节点

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeTwoLists(l1 *ListNode, l2 *ListNode) *ListNode {

    headNode:=&ListNode{}
    node := headNode
    for l1!=nil&&l2!=nil{
        if l1.Val < l2.Val {
            node.Next = l1
            l1 = l1.Next
        } else {
            node.Next = l2
            l2 = l2.Next
        }
        node = node.Next
    }

    if l2!=nil{
        node.Next = l2
    } else if l1!=nil{
        node.Next = l1
    }
    return headNode.Next
}


```

>复杂度分析

时间复杂度：O(nm)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了100.00%的用户
