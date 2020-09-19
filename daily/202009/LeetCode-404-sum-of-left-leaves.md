# LeetCode-404-sum-of-left-leaves
>题目链接

[LeetCode-404-sum-of-left-leaves](https://leetcode-cn.com/problems/sum-of-left-leaves/)

>思路

递归找左叶子

>代码

```go


var sum int

func sumOfLeftLeaves(root *TreeNode) int {
    sum = 0
    leftSum(root)
    return sum
}

func leftSum(root *TreeNode) {
    if root == nil {
        return
    }

    if root.Left != nil && root.Left.Left == nil && root.Left.Right == nil {
        sum += root.Left.Val
    }
    leftSum(root.Left)
    leftSum(root.Right)

}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了23.53%的用户
