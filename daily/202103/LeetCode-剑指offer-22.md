# LeetCode-剑指offer-22

>题目链接

[LeetCode-剑指offer-22](https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/)

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
func getKthFromEnd(head *ListNode, k int) *ListNode {
    tNode:=head
    for i:=1;i<k;i++ {
        tNode = tNode.Next
    }

    node:=head
    for tNode.Next!=nil{
        node = node.Next
        tNode = tNode.Next
    }
    return node
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了91.23%的用户
