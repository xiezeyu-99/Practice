# LeetCode-面试题04.10

>题目链接

[LeetCode-面试题04.10](https://leetcode-cn.com/problems/check-subtree-lcci/)

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
func checkSubTree(t1 *TreeNode, t2 *TreeNode) bool {
    t1 = findEq(t1,t2)
    if t1 == nil {
        return false
    }
    return judge(t1,t2)
}
func judge(t1,t2 *TreeNode) bool{
   
    if t1 == nil && t2 == nil {
        return true
    }
     fmt.Println(t1,t1.Val,t2.Val)
    if t1.Val != t2.Val {
        return false
    }
    return judge(t1.Left,t2.Left)&&judge(t1.Right,t2.Right)
}

func findEq(t1,t2 *TreeNode) *TreeNode{
    if t1==nil || t1.Val == t2.Val {
        return t1
    }

    if v:=findEq(t1.Left,t2);v!=nil{
        return v
    }

    if v:=findEq(t1.Right,t2);v!=nil{
        return v
    }

    return nil
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :36ms, 在所有 Go 提交中击败了83.96%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了30.37%的用户
