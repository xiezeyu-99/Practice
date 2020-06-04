# LeetCode-222-count-complete-tree-nodes

>题目链接

[LeetCode-222-count-complete-tree-nodes](https://leetcode-cn.com/problems/count-complete-tree-nodes/)

>思路

1、先计算树的深度d，然后用二分法找最后一层有多少个节点，最后用n-1层的节点总数加上第n层的节点数

2、其中判断最后一层的某个节点是否存在时，也是用二分法，如果目标值比中点大，则往右子树遍历，否则往左子树

>代码

```go

func countNodes(root *TreeNode) int {
    if root == nil {
        return 0
    }
    d:=0//深度
    node := root
    for node.Left!=nil{
        node = node.Left
        d++
    }
    if d==0{
        return 1
    }

    count:=int(math.Pow(2,float64(d)))//最后一层最大可能个数
    left:=0
    right:=count-1
    for left<=right{
        mid:=(right-left)>>1+left
        if exist(mid,d,count,root) {
            left=mid+1
        } else {
            right=mid-1
        }
    }
    return count - 1 + left 
}


func exist(target,d,count int ,root *TreeNode) bool{
    left:=0
    right:=count-1
    for 0<d{
        d--
        mid:=(right-left)>>1+left
        if target>mid {
            left = mid+1
            root=root.Right
        } else {
            right = mid-1
            root=root.Left
        }
    }
    return root!=nil
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了95.68%的用户

内存消耗 :6.6MB, 在所有 Go 提交中击败了100.00%的用户
