# LeetCode-116-populating-next-right-pointers-in-each-node

>题目链接

[LeetCode-116-populating-next-right-pointers-in-each-node](https://leetcode-cn.com/problems/populating-next-right-pointers-in-each-node/)

>思路

从右子树开始递归遍历，记录下每层的节点，然后连接同一层的节点

>代码

```go

/**
 * Definition for a Node.
 * type Node struct {
 *     Val int
 *     Left *Node
 *     Right *Node
 *     Next *Node
 * }
 */
var nodeSlice map[int][]*Node
func connect(root *Node) *Node {
    nodeSlice = make(map[int][]*Node,0)
    find(root,0)
    return root
}

func find(node *Node, n int){
    if node==nil{
        return
    }

    find(node.Right,n+1)
    if len(nodeSlice[n]) > 0 {
        node.Next = nodeSlice[n][len(nodeSlice[n])-1]
    } 
    nodeSlice[n] = append(nodeSlice[n],node)
    find(node.Left,n+1)
    return
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.50%的用户

内存消耗 :6.2MB, 在所有 Go 提交中击败了100.00%的用户
