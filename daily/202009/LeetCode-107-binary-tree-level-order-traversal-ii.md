# LeetCode-107-binary-tree-level-order-traversal-ii
>题目链接

[LeetCode-107-binary-tree-level-order-traversal-ii](https://leetcode-cn.com/problems/binary-tree-level-order-traversal-ii/)

>思路

广度优先遍历，然后反转结果

>代码

```go

func levelOrderBottom(root *TreeNode) [][]int {
    ans := [][]int{}
    if root == nil {
        return ans
    }
    queue := []*TreeNode{root}

    for len(queue) > 0 {
        l := len(queue)
        temp := []int{}
        for i := 0; i < l; i++ {
            n := queue[0]
            temp = append(temp, n.Val)
            queue = queue[1:]
            if n.Left != nil {
                queue = append(queue, n.Left)
            }
            if n.Right != nil {
                queue = append(queue, n.Right)
            }

        }
        ans = append(ans, temp)
    }

    left, right := 0, len(ans)-1
    for left < right {
        ans[left], ans[right] = ans[right], ans[left]
        left++
        right--
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了57.87%的用户
