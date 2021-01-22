#  LeetCode-331-verify-preorder-serialization-of-a-binary-tree

>题目链接

[LeetCode-331-verify-preorder-serialization-of-a-binary-tree](https://leetcode-cn.com/problems/verify-preorder-serialization-of-a-binary-tree/)

>思路

计算槽位，遍历字符串，每个节点消耗一个槽位，非空节点还要额外增加两个槽位，如果遍历到槽位不等于0，则不合规则

>代码

```go

func isValidSerialization(preorder string) bool {
    node_array := strings.Split(preorder, ",");

    slot := 1;
    for i := 0; i < len(node_array); i++ {
        slot -= 1;

        if slot < 0 {
            return false;
        }

        if node_array[i] != "#" {
            slot += 2;
        }
    }

    return slot == 0;
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.7MB, 在所有 Go 提交中击败了69.88%的用户
