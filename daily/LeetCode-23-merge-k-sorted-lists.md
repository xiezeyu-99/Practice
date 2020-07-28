# LeetCode-23-merge-k-sorted-lists
>题目链接

[LeetCode-23-merge-k-sorted-lists](https://leetcode-cn.com/problems/merge-k-sorted-lists/)

>思路

用分治，把链表拆分，然后再两两合并

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeKLists(lists []*ListNode) *ListNode {
    if len(lists) == 0 {
        return nil
    }
    if len(lists) == 1 {
        return lists[0]
    }
    return divide(lists, 0, len(lists)-1)
}

func divide(lists []*ListNode, head, tail int) *ListNode {
    if head == tail {
        return lists[head]
    }

    mid := (tail-head)>>1 + head
    return merge(divide(lists, head, mid), divide(lists, mid+1, tail))
}

func merge(list1, list2 *ListNode) *ListNode {
    head := &ListNode{}
    node := head
    for list1 != nil && list2 != nil {
        if list1.Val < list2.Val {
            node.Next = list1
            list1 = list1.Next
        } else {
            node.Next = list2
            list2 = list2.Next
        }
        node = node.Next
    }

    if list1 == nil {
        node.Next = list2
    } else {
        node.Next = list1
    }
    return head.Next
}


```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(logn)，递归栈空间

>总结

执行用时 :4ms, 在所有 Go 提交中击败了99.64%的用户

内存消耗 :5.3MB, 在所有 Go 提交中击败了100.00%的用户
