# LeetCode-105-construct-binary-tree-from-preorder-and-inorder-traversal
>题目链接

[LeetCode-105-construct-binary-tree-from-preorder-and-inorder-traversal](https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)

>思路

递归，每次构建左右子树。其中中序遍历，当前元素左边的全是左子树元素，右边全是右子树元素。前序遍历，前面部分全是左子树元素，后面部分全是右子树元素，因此可以通过这样划分两个数组，进入下一次递

归

>代码

```go

 func buildTree(preorder []int, inorder []int) *TreeNode {
    if len(preorder) == 0 {
        return nil
    }
    root := &TreeNode{preorder[0], nil, nil}
    i := 0
    for ; i < len(inorder); i++ {
        if inorder[i] == preorder[0] {
            break
        }
    }
    root.Left = buildTree(preorder[1:len(inorder[:i])+1], inorder[:i])
    root.Right = buildTree(preorder[len(inorder[:i])+1:], inorder[i+1:])
    return root
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了56.27%的用户

内存消耗 :4.3MB, 在所有 Go 提交中击败了16.67%的用户
