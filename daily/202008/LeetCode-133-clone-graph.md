# LeetCode-133-clone-graph
>题目链接

[LeetCode-133-clone-graph](https://leetcode-cn.com/problems/clone-graph/)

>思路

广度优先搜索，记录已处理过的点

>代码

```go

/**
 * Definition for a Node.
 * type Node struct {
 *     Val int
 *     Neighbors []*Node
 * }
 */

var status map[int]*Node
func cloneGraph(node *Node) *Node {
    status = make(map[int]*Node)
    return dcopy(node)
}

func dcopy(node *Node) *Node{
    if node == nil{
        return node
    }
    if v,ok:=status[node.Val];ok {
        return v
    }
    
    newNode := &Node{
        Val:node.Val,
        Neighbors:[]*Node{},
    }

    status[node.Val] = newNode
    for i:=range node.Neighbors{
        newNode.Neighbors = append(newNode.Neighbors, dcopy(node.Neighbors[i]))      
    }
    
    return newNode
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了44.83%的用户
