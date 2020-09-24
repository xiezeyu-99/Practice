# LeetCode-129-sum-root-to-leaf-numbers

> 题目链接

[LeetCode-129-sum-root-to-leaf-numbers](https://leetcode-cn.com/problems/sum-root-to-leaf-numbers/)

> 思路

不断递归遍历树，把左右子树的结果相加

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
func sumNumbers(root *TreeNode) int {	
	return sum(root,0)
}

func sum(root *TreeNode, num int) int {
	if root == nil {
		return 0
	}
	num = num*10 + root.Val
    if root.Left ==nil && root.Right ==nil {
        return num
    }

	return sum(root.Right, num) + sum(root.Left, num)
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4 MB, 在所有 Go 提交中击败了44.31%的用户

