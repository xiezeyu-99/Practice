# LeetCode-面试题04.09

>题目链接

[LeetCode-面试题04.09](https://leetcode-cn.com/problems/bst-sequences-lcci/)

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
func BSTSequences(root *TreeNode) [][]int {
    if root == nil {
        return [][]int{{}} 
    }
    queue:=[]*TreeNode{root}
    res:=[][]int{}
    var f func([]*TreeNode, []int)
    f =func(queue []*TreeNode, path []int) {
        if len(queue) == 0{
            temp:=make([]int, len(path))
            copy(temp, path)
            res = append(res, temp)
            return
        }

        size:=len(queue)
        for i:=0;i<size;i++ {
            cur:=queue[0]
            queue = queue[1:]
            path = append(path,cur.Val)
            if cur.Left !=nil {
                queue = append(queue, cur.Left)
            }
            if cur.Right !=nil {
                queue = append(queue, cur.Right)
            }

            f(queue, path)

            queue = queue[0:size-1]
            queue = append(queue,cur)
            path = path[:len(path)-1]
        }
    }
    f(queue,[]int{})
    return res

}




```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
