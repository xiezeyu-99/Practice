# LeetCode-117-populating-next-right-pointers-in-each-node-ii

> 题目链接

[LeetCode-117-populating-next-right-pointers-in-each-node-ii](https://leetcode-cn.com/problems/populating-next-right-pointers-in-each-node-ii/)

> 思路

在第n-1层通过next指针进行遍历去给第n层建立next指针，并且记录第n层的最左边节点，以便下降到下一层后从最左边开始重新遍历

> 代码

func connect(root *Node) *Node {
    if root == nil {
        return root
    }
 
    cur := root
    for cur != nil {
        var firstLeft *Node //下一层的最左边节点
        var temp *Node      //下一层的遍历节点
        for cur != nil {    //通过next指针遍历当前层
            if cur.Left != nil {
                if temp == nil {
                    firstLeft = cur.Left
                } else {
                    temp.Next = cur.Left
                }
                temp = cur.Left
            }
            if cur.Right != nil {
                if temp == nil {
                    firstLeft = cur.Right
                } else {
                    temp.Next = cur.Right
                }
                temp = cur.Right
            }
 
            cur = cur.Next
        }
 
        cur = firstLeft //下降到下一层
    }
    return root
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

> 总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 5.9MB, 在所有 Go 提交中击败了100.00%的用户

