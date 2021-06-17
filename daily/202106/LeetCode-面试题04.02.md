# LeetCode-面试题04.02

>题目链接

[LeetCode-面试题04.02](https://leetcode-cn.com/problems/minimum-height-tree-lcci/)

> 思路


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
func sortedArrayToBST(nums []int) *TreeNode {
    if len(nums) == 0 {
        return nil
    }
    left,right:=0,len(nums)-1
    mid:=(right-left)/2+left

    head:=&TreeNode{
        Val:nums[mid],
        Left:sortedArrayToBST(nums[:mid]),
        Right:sortedArrayToBST(nums[mid+1:]),
    }
    return head
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了86.55%的用户

内存消耗 :4.3MB, 在所有 Go 提交中击败了35.09%的用户
