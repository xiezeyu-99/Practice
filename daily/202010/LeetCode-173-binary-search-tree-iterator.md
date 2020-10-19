# LeetCode-173-binary-search-tree-iterator

>题目链接

[LeetCode-173-binary-search-tree-iterator](https://leetcode-cn.com/problems/binary-search-tree-iterator/)

>思路

初始化时，用栈保存所有从根节点开始的左节点，next时出栈，然后把右节点入栈，这样就可以保证栈顶的是最小值，并且空间复杂度为O(h)

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
type BSTIterator struct {
    stack []*TreeNode
}

func Constructor(root *TreeNode) (result BSTIterator) {
    result.stack = []*TreeNode{}
    result.pushLeft(root)

    return
}

func (this *BSTIterator) pushLeft(root *TreeNode)  {
    for root != nil{
        this.stack = append(this.stack, root)
        root = root.Left
    }
}

/** @return the next smallest number */
func (this *BSTIterator) Next() (result int) {
    node := this.stack[len(this.stack) - 1]
    this.stack = this.stack[:len(this.stack) - 1]

    result = node.Val
    if node.Right != nil{
        this.pushLeft(node.Right)
    }

    return
}


/** @return whether we have a next smallest number */
func (this *BSTIterator) HasNext() bool {
    return len(this.stack) > 0
}


/**
 * Your BSTIterator object will be instantiated and called as such:
 * obj := Constructor(root);
 * param_1 := obj.Next();
 * param_2 := obj.HasNext();
 */


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(h)

>总结

执行用时 :40ms, 在所有 Go 提交中击败了85.92%的用户
 
内存消耗 :11.5MB, 在所有 Go 提交中击败了65.28%的用户
