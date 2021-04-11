# LeetCode-剑指offer-33

>题目链接

[LeetCode-剑指offer-33](https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-hou-xu-bian-li-xu-lie-lcof/)

> 思路

数组最后一个为根节点，顺序遍历，第一个大于根节点的位置划分左右子树，如果右子树中有小于根节点的，则不是二叉搜索树

>代码

```go

func verifyPostorder(postorder []int) bool {
    if len(postorder) <=1 {
        return true
    }
    root := postorder[len(postorder) - 1]
    var index = 0
    for i, v := range postorder {
        if v >= root {
            index = i
            break
        }
    }
    left := postorder[:index]
    rigth := postorder[index:len(postorder)-1]
    for _,v := range rigth {
        if v < root {
            return false
        }
    }
    return verifyPostorder(left) && verifyPostorder(rigth)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00的用户

内存消耗 :2MB, 在所有 Go 提交中击败了38.33%的用户
