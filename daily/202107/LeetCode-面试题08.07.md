# LeetCode-面试题08.07

>题目链接

[LeetCode-面试题08.07](https://leetcode-cn.com/problems/permutation-i-lcci/)

> 思路


>代码

```go

func permutation(S string) []string {
    if len(S) == 1{
        return []string{S}
    }
    sub:=permutation(S[1:])
    res:=[]string{}
    for _,v:=range sub {
        for i:=0;i<=len(v);i++{
            res = append(res, v[:i]+S[:1]+v[i:])
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
