# LeetCode-111-minimum-depth-of-binary-tree

>题目链接

[LeetCode-111-minimum-depth-of-binary-tree](https://leetcode-cn.com/problems/minimum-depth-of-binary-tree/)

>思路

后序遍历，找出左右子树中的最小深度

>代码

```go

func minDepth(root *TreeNode) int {
    if root==nil{
        return 0
    }
    return getDepth(root)
}

func getDepth(node *TreeNode) int {
    if node==nil{
        return math.MaxInt32
    }
    if node.Left==nil&&node.Right==nil{
        return 1
    }
    
    leftDepth:=getDepth(node.Left)
    rightDepth:=getDepth(node.Right)

    if leftDepth>rightDepth {
        return rightDepth+1
    } else {
        return leftDepth+1
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.46%的用户

内存消耗 :5.3MB, 在所有 Go 提交中击败了66.67%的用户
