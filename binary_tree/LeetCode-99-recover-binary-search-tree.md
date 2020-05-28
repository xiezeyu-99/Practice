# LeetCode-99-recover-binary-search-tree

>题目链接

[LeetCode-99-recover-binary-search-tree](https://leetcode-cn.com/problems/recover-binary-search-tree/)

>思路

中序遍历，找到不是递增的点，记录下来，然后交换值

中序遍历有两种情况，例1：1，3，2，4；例2：1，2，6，4，5，3。例子1这种只存在一个递减点（3，2），例子2有两个（6，4）（5，3），因此只需记录一次较大节点，但是要记录最

多两次较小节点

>代码

```go

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var node1,node2,tempNode *TreeNode
func recoverTree(root *TreeNode)  {
    node1,node2,tempNode  = nil,nil,nil
    check(root)
    node1.Val,node2.Val=node2.Val,node1.Val
}

func check(node *TreeNode) {
    if node == nil {
        return
    }
    check(node.Left)
    if tempNode!=nil && tempNode.Val > node.Val {
        if node1==nil{
            node1 = tempNode
        }
        if node2 == nil {
            node2=node
        } else {
            node2=node
            return
        }
    }
    tempNode = node
    check(node.Right)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了94.07%的用户

内存消耗 :6MB, 在所有 Go 提交中击败了100.00%的用户
