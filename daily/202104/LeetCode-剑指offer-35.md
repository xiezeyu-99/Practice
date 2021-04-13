# LeetCode-剑指offer-35

>题目链接

[LeetCode-剑指offer-35](https://leetcode-cn.com/problems/fu-za-lian-biao-de-fu-zhi-lcof/)

> 思路


>代码

```go

func copyRandomList(head *Node) *Node {

    status := make(map[*Node]*Node)
    cur := head
    for cur != nil {
        temp := &Node{
            Val: cur.Val,
        }
        status[cur] = temp
        cur = cur.Next
    }
    cur = head
    for cur != nil {
        status[cur].Next = status[cur.Next]
        status[cur].Random = status[cur.Random]
        cur = cur.Next
    }
    return status[head]
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00的用户

内存消耗 :3.5MB, 在所有 Go 提交中击败了53.76%的用户
