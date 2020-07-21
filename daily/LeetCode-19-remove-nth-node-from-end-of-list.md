# LeetCode-19-remove-nth-node-from-end-of-list

> 题目链接

[LeetCode-19-remove-nth-node-from-end-of-list](https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/)

> 思路

用快慢指针一趟遍历，慢指针遍历到要删除的节点的前一个节点即可。增加哨兵减少处理的复杂度


> 代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeNthFromEnd(head *ListNode, n int) *ListNode {
    emptyNode:=&ListNode{}
    emptyNode.Next = head
    fastNode:=emptyNode
    slowNode:=emptyNode
    i:=0
    for fastNode.Next!=nil{
        fastNode = fastNode.Next
        if i >= n {
            slowNode = slowNode.Next
        } 
        i++           
    }
    slowNode.Next = slowNode.Next.Next  
    return emptyNode.Next
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2 MB, 在所有 Go 提交中击败了100.00%的用户

