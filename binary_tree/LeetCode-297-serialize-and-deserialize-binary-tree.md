# LeetCode-297-serialize-and-deserialize-binary-tree

>题目链接

[LeetCode-297-serialize-and-deserialize-binary-tree](https://leetcode-cn.com/problems/serialize-and-deserialize-binary-tree/)

>思路

1、前序遍历递归，空节点记为#，用逗号隔开拼接成字符串输出

2、把字符串按逗号分隔成数组，继续前序遍历递归

>代码

```go

type Codec struct {

}

func Constructor() Codec {
    return Codec{}
}

// Serializes a tree to a single string.
func (this *Codec) serialize(root *TreeNode) string {
    if root==nil{
        return "#"
    }
    return strconv.Itoa(root.Val)+","+this.serialize(root.Left)+","+this.serialize(root.Right)
}

// Deserializes your encoded data to tree.
func (this *Codec) deserialize(data string) *TreeNode {
    str:=strings.Split(data,",")
    return dfs(&str)
}

func dfs(data *[]string) *TreeNode{
     val:=(*data)[0]
     *data=(*data)[1:]
     if val=="#"{
         return nil
     }
     nodeValue,_:=strconv.Atoi(val)
     node:=&TreeNode{Val: nodeValue}
     node.Left = dfs(data)
     node.Right = dfs(data)
    return node
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.12%的用户

内存消耗 :7MB, 在所有 Go 提交中击败了100.00%的用户
