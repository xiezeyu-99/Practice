# LeetCode-138-copy-list-with-random-pointer

> 题目链接

[LeetCode-138-copy-list-with-random-pointer](https://leetcode-cn.com/problems/copy-list-with-random-pointer/)

> 思路

遍历树，用map记录下已复制的点

> 代码

```go

/**
 * Definition for a Node.
 * type Node struct {
 *     Val int
 *     Next *Node
 *     Random *Node
 * }
 */
var nodes map[*Node]*Node
func copyRandomList(head *Node) *Node {
    nodes=make(map[*Node]*Node)
    return copy(head)
}

func copy(head *Node) *Node{
    if head == nil {
        return nil
    }
    if v,ok:=nodes[head];ok{
        return v
    }
    tmp:=&Node{
        Val:head.Val,
    }
    nodes[head] = tmp


    tmp.Next = copy(head.Next)
    tmp.Random = copy(head.Random)

    return tmp
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.7 MB, 在所有 Go 提交中击败了5.03%的用户

