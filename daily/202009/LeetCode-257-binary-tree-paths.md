# LeetCode-257-binary-tree-paths

> 题目链接

[LeetCode-257-binary-tree-paths](https://leetcode-cn.com/problems/binary-tree-paths/)

> 思路

深度优先遍历

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
var ans []string
func binaryTreePaths(root *TreeNode) []string {
	ans = []string{}
	paths(root, []string{})
	return ans
}

func paths(root *TreeNode, s []string) {
	if root == nil {
		return 
	}
	s = append(s, strconv.Itoa(root.Val))
	if root.Left == nil && root.Right == nil{
		ans = append(ans, strings.Join(s, "->"))
		return
	}
	paths(root.Left, s)
	paths(root.Right, s)
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4 MB, 在所有 Go 提交中击败了32.3%的用户

