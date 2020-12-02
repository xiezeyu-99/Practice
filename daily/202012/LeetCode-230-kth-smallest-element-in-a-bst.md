#  LeetCode-230-kth-smallest-element-in-a-bst

>题目链接

[LeetCode-230-kth-smallest-element-in-a-bst](https://leetcode-cn.com/problems/kth-smallest-element-in-a-bst/)

>思路

前序遍历

>代码

```go

var stat []int
func kthSmallest(root *TreeNode, k int) int {
    stat = []int{}
    dfs(root)
    return stat[k-1]
}

func dfs(root *TreeNode) {
    if root == nil {
        return
    }
    dfs(root.Left)
    stat = append(stat, root.Val)
    dfs(root.Right)
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.47%的用户
 
内存消耗 :6.2MB, 在所有 Go 提交中击败了70.07%的用户
