# LeetCode-108-convert-sorted-array-to-binary-search-tree

> 题目链接

[LeetCode-108-convert-sorted-array-to-binary-search-tree](https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/)

> 思路

按中点划分左右子树，递归

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
func sortedArrayToBST(nums []int) *TreeNode {
	if len(nums)==0{
		return nil
	}

	left,right:=0,len(nums)-1
	mid:=(right-left)/2+left
	root := &TreeNode{
		Val:nums[mid],
		Left:sortedArrayToBST(nums[:mid]),
		Right:sortedArrayToBST(nums[mid+1:]),
	}
    return root
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了85.76%的用户

内存消耗 :4.4 MB, 在所有 Go 提交中击败了9.29%的用户

