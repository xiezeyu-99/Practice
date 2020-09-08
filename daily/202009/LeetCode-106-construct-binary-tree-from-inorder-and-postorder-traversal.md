# LeetCode-106-construct-binary-tree-from-inorder-and-postorder-traversal

> 题目链接

[LeetCode-106-construct-binary-tree-from-inorder-and-postorder-traversal](https://leetcode-cn.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/)

> 思路

和105一样

> 代码

```go

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func buildTree(inorder []int, postorder []int) *TreeNode {
	if len(postorder) == 0 {
		return nil
	}
	root:=&TreeNode{
		Val: postorder[len(postorder)-1],
	}

	i:=0
	for ;i<len(inorder);i++{
		if inorder[i] == root.Val{
			break
		}
	}
  root.Right = buildTree(inorder[i+1:], postorder[i:len(postorder)-1])
	root.Left = buildTree(inorder[:i], postorder[:i])
	return root
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了55.89%的用户

内存消耗 :4.2 MB, 在所有 Go 提交中击败了6.55%的用户

