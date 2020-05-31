# LeetCode-124-binary-tree-maximum-path-sum

>题目链接

[LeetCode-124-binary-tree-maximum-path-sum](https://leetcode-cn.com/problems/binary-tree-maximum-path-sum/)

>思路

经过某个根节点的最大路径，等于左右最大路径加上根节点的值，而向上传递的最大路径，等于左子树中的最大路径和右子树中的最大路径中的较大值加上根节点的值，递推公式为

maxSum(root) =root.Val+max(maxSum(root.Left),maxSum(root.Right)。由于是求最大值，因此当子树的最大路径和是负数是，就没必要继续往上传递，因此直接设置为0

>代码

```go

var maxSum int
func maxPathSum(root *TreeNode) int {
    maxSum=math.MinInt64
    getSum(root)
    return maxSum
}

func getSum(node *TreeNode) int {
    if node==nil{
        return 0
    }

    leftSum:=getSum(node.Left)
    if leftSum<0 {
        leftSum=0
    }
    rightSum:=getSum(node.Right)
    if rightSum<0 {
        rightSum=0
    }
    current:=leftSum+rightSum+node.Val
    if current>maxSum {
        maxSum = current
    }

    if leftSum>rightSum {
        return leftSum+node.Val
    } else {
        return rightSum+node.Val
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了85.21%的用户

内存消耗 :6.7MB, 在所有 Go 提交中击败了100.00%的用户
