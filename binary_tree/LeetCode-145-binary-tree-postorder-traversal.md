# LeetCode-145-binary-tree-postorder-traversal

>题目链接

[LeetCode-145-binary-tree-postorder-traversal](https://leetcode-cn.com/problems/binary-tree-postorder-traversal/)

>思路

1、用宽度优先搜索遍历树，先遍历跟节点，然后右节点，最后左节点，把节点记录下来，然后反向输出

2、遍历过程中，记录下子树之后，要断开根节点与子树的连接，防止重复遍历子树

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
func postorderTraversal(root *TreeNode) []int {
    if root == nil {
        return nil
    }
    stack:=[]*TreeNode{root}
    result:=[]int{}
    time.Sleep(time.Millisecond*1)
    for len(stack)>0{
        node:=stack[len(stack)-1]
        if node.Right!=nil{
            stack = append(stack,node.Right)
        }
        if node.Left!=nil{
            stack = append(stack,node.Left)
        }
        if node.Right==nil&&node.Left==nil{
            stack = stack[:len(stack)-1]
            result = append(result,node.Val)
        }
        node.Left=nil
        node.Right=nil
    }
    return result
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
