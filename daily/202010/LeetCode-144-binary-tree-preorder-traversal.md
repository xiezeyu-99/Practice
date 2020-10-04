# LeetCode-144-binary-tree-preorder-traversal
>题目链接

[LeetCode-144-binary-tree-preorder-traversal](https://leetcode-cn.com/problems/binary-tree-preorder-traversal/)

>思路

先输出左节点，同时把对应右节点入栈。左节点输出完成后，从栈顶开始弹出右节点进行输出

>代码

```go

  func preorderTraversal(root *TreeNode) []int {
    var res []int
    var stack []*TreeNode

    for 0 < len(stack) || root != nil { //root != nil 只为了第一次root判断，必须放最后
        for root != nil {
            res = append(res, root.Val)       //前序输出
            stack = append(stack, root.Right) //右节点 入栈
            root = root.Left                  //移至最左
        }
        index := len(stack) - 1 //栈顶
        root = stack[index]     //出栈
        stack = stack[:index]
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了55.23%的用户
