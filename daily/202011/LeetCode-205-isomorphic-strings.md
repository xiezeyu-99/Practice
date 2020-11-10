#  LeetCode-205-isomorphic-strings

>题目链接

[LeetCode-205-isomorphic-strings](https://leetcode-cn.com/problems/isomorphic-strings/)

>思路

两个map，一个保存映射关系，一个保存使用状态

>代码

```go

func isIsomorphic(s string, t string) bool {
    if len(s) != len(t) {
        return false
    }
    status := make(map[byte]byte)
    used := make(map[byte]bool)
    for i := 0; i < len(s); i++ {
        v, ok := status[s[i]]
        if !ok {
            if used[t[i]] {
                return false
            }
            status[s[i]] = t[i]
            used[t[i]] = true
        } else if v != t[i] {
            return false
        }
    }
    return true
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了92.24%的用户
