# LeetCode-95-unique-binary-search-trees-ii

> 题目链接

[LeetCode-95-unique-binary-search-trees-ii](https://leetcode-cn.com/problems/unique-binary-search-trees-ii/)

> 思路

二叉搜索树左子树的节点肯定比根节点小，右子树的节点肯定比根节点大，因此先固定根节点，然后小于根节点的数字去构建左子树，大于根节点的数字去构建右子树，不断递归，最后合并子树

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
func generateTrees(n int) []*TreeNode {
    if n==0 {
        return nil
    }
    result := create(1, n)
    return result
}
 
func create(start, end int) []*TreeNode {
    if start == end {
        return []*TreeNode{&TreeNode{Val: start}}
    }
    if start > end {
        return []*TreeNode{nil}
    }
 
    result := []*TreeNode{}
    for i := start; i <= end; i++ {
        leftTree := create(start, i-1)
        rigthTree := create(i+1, end)
        for m := 0; m < len(leftTree); m++ {
            for n := 0; n < len(rigthTree); n++ {
                node := &TreeNode{Val: i}
                node.Left = leftTree[m]
                node.Right = rigthTree[n]
                result = append(result, node)
            }
        }
 
    }
    return result
}

```

> 复杂度分析

时间复杂度：O(n！)

空间复杂度：O(1)

> 总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.4MB, 在所有 Go 提交中击败了50%的用户

