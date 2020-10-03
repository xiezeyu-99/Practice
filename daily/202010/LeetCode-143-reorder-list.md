# LeetCode-143-reorder-list
>题目链接

[LeetCode-143-reorder-list](https://leetcode-cn.com/problems/reorder-list/)

>思路

如注释

>代码

```go

 func reorderList(head *ListNode)  {
    // 单节点直接返回
    if head == nil || head.Next == nil {
        return
    }

    // list 顺序存储所有节点
    var list []*ListNode
    var p = head
    for p != nil {
        list = append(list, p)
        p = p.Next
    }

    // 双指针 左右同时向中间靠拢
    var i, j = 0, len(list)-1
    for i < j {
        list[i].Next = list[j]
        list[j].Next = list[i+1]
        i++
        j--
    }
    list[i].Next = nil // 尾部节点
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.09%的用户
 
内存消耗 :5.9MB, 在所有 Go 提交中击败了14.58%的用户
