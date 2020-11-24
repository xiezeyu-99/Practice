#  LeetCode-222-count-complete-tree-nodes

>题目链接

[LeetCode-222-count-complete-tree-nodes](https://leetcode-cn.com/problems/count-complete-tree-nodes/)

>思路

递归计算每个根节点的左右高度，如果相等就是满二叉树，直接公式计算，如果不相等，就继续递归

>代码

```go

func countNodes(root *TreeNode) int {
    if root == nil {
        return 0
    }
    l, r := root, root

    lcount := 0
    for l != nil {
        l = l.Left
        lcount++
    }

    rcount := 0
    for r != nil {
        r = r.Right
        rcount++
    }
    if lcount == rcount {
        return 1<<lcount - 1
    }

    return 1 + countNodes(root.Left) + countNodes(root.Right)
}

```

>复杂度分析

时间复杂度：O(logn * logn)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了92.44%的用户
 
内存消耗 :7.1MB, 在所有 Go 提交中击败了68.75%的用户
