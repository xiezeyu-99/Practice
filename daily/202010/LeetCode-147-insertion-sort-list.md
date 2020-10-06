# LeetCode-147-insertion-sort-list
>题目链接

[LeetCode-147-insertion-sort-list](https://leetcode-cn.com/problems/insertion-sort-list/)

>思路

遍历链表，遇到非递增的，就把该节点从头开始比较，放到合适的位置，使用哨兵减少处理的复杂度

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func insertionSortList(head *ListNode) *ListNode {
    empty := &ListNode{
        Val:  math.MinInt64,
        Next: head,
    }
    node := empty
    for node.Next != nil {
        if node.Val > node.Next.Val {

            sh := empty
            for sh.Next.Val < node.Next.Val {
                sh = sh.Next
            }
            moveNode := node.Next
            node.Next = node.Next.Next
            moveNode.Next = sh.Next
            sh.Next = moveNode
        } else {
            node = node.Next
        }
    }
    return empty.Next
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.08%的用户
 
内存消耗 :3.2MB, 在所有 Go 提交中击败了52.02%的用户
