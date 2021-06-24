# LeetCode-面试题04.12

>题目链接

[LeetCode-面试题04.12](https://leetcode-cn.com/problems/paths-with-sum-lcci/)

> 思路

用数组记录后缀和，也就是当前结点为结尾的所有子树的和

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
func pathSum(root *TreeNode, sum int) int {
    var f func(root *TreeNode, a[]int) int
    f = func(root *TreeNode, a[]int) (result int) {
        if root == nil {
            return 
        }
        s:=make([]int,len(a)+1)
        copy(s, a)
        for i:=range s{
            s[i] += root.Val
            if s[i] == sum {
                result ++ 
            }
        }
        return result + f(root.Left, s) + f(root.Right, s)

    }
    return f(root,[]int{})
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了72.57%的用户

内存消耗 :7.5MB, 在所有 Go 提交中击败了6.19%的用户
