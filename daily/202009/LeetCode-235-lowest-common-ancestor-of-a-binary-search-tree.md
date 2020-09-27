# LeetCode-235-lowest-common-ancestor-of-a-binary-search-tree
>题目链接

[LeetCode-235-lowest-common-ancestor-of-a-binary-search-tree](https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)

>思路

如果当前节点小于两个目标节点，则往右走，如果大于两个目标节点，则往左走，否则就是分叉点，也就是目标值

>代码

```go

 func lowestCommonAncestor(root, p, q *TreeNode) (ancestor *TreeNode) {
    ancestor = root
    for {
        if p.Val < ancestor.Val && q.Val < ancestor.Val {
            ancestor = ancestor.Left
        } else if p.Val > ancestor.Val && q.Val > ancestor.Val {
            ancestor = ancestor.Right
        } else {
            return
        }
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :24ms, 在所有 Go 提交中击败了79.91%的用户
 
内存消耗 :7.7MB, 在所有 Go 提交中击败了5.36%的用户
