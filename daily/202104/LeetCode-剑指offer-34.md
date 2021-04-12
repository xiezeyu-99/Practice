# LeetCode-剑指offer-34

>题目链接

[LeetCode-剑指offer-34](https://leetcode-cn.com/problems/er-cha-shu-zhong-he-wei-mou-yi-zhi-de-lu-jing-lcof/)

> 思路

回溯

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
 var res [][]int
func pathSum(root *TreeNode, target int) [][]int {
    if root == nil {
        return [][]int{}
    }
    res = [][]int{}
    traceBack(root , target-root.Val, []int{root.Val})
    return res
}

func traceBack(root *TreeNode, target int, temp []int) {

    if target == 0 && root.Left==nil&& root.Right==nil{
        a:=make([]int,len(temp))
        copy(a,temp)
        res = append(res,a)
        return
    }
    
     
    if root.Left != nil {
        temp = append(temp,root.Left.Val) 
        traceBack(root.Left, target-root.Left.Val, temp) 
        temp = temp[:len(temp)-1]
    }
    if root.Right != nil {
        temp = append(temp,root.Right.Val) 
        traceBack(root.Right, target-root.Right.Val, temp)
        temp = temp[:len(temp)-1]
    }        
    
    
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了91.28的用户

内存消耗 :4.4MB, 在所有 Go 提交中击败了94.70%的用户
