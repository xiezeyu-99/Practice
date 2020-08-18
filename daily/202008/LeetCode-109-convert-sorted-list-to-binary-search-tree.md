# LeetCode-109-convert-sorted-list-to-binary-search-tree
>题目链接

[LeetCode-109-convert-sorted-list-to-binary-search-tree](https://leetcode-cn.com/problems/convert-sorted-list-to-binary-search-tree/)

>思路

要获得平衡二叉树，则左右子树的节点个数应该尽量平均，因此采用分治，每次取中点作为根节点，左边区间构成左子树，右边区间构成右子树，不断递归。为了方便寻找中点，把链表转换

为数组

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func sortedListToBST(head *ListNode) *TreeNode {
    if head == nil {
        return nil
    }
    element := []int{}
    for head != nil {
        element = append(element, head.Val)
        head = head.Next
    }
    return createTree(0, len(element)-1, element)
}

func createTree(left, right int, element []int) *TreeNode {
    if left == right {
        return &TreeNode{
            Val: element[right],
        }
    }
    if left > right {
        return nil
    }

    rootIndex := (right-left)/2 + left
    node := &TreeNode{
        Val:   element[rootIndex],
        Left:  createTree(left, rootIndex-1, element),
        Right: createTree(rootIndex+1, right, element),
    }
    return node
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了98.31%的用户

内存消耗 :6.4MB, 在所有 Go 提交中击败了7.25%的用户
