# LeetCode-113-path-sum-ii

> 题目链接

[LeetCode-113-path-sum-ii](https://leetcode-cn.com/problems/path-sum-ii/)

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
var ans [][]int
func pathSum(root *TreeNode, sum int) [][]int {
	ans = [][]int{}
	if root == nil {
		return ans
	}
	dfs(root,sum, []int{})
	return ans
}

func dfs(root *TreeNode, sum int, temp []int){
	temp = append(temp, root.Val)
	if root.Left == nil && root.Right == nil && root.Val == sum{
		copyTemp := make([]int, len(temp))
		copy(copyTemp,temp)
		ans = append(ans,copyTemp)	
		return	
	}
			
	if root.Left !=nil{
		dfs(root.Left, sum-root.Val,temp)
	}
	if root.Right != nil {
		dfs(root.Right, sum-root.Val,temp)
	}
	
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.8 MB, 在所有 Go 提交中击败了30.6%的用户

