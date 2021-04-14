# LeetCode-剑指offer-38

>题目链接

[LeetCode-剑指offer-38](https://leetcode-cn.com/problems/zi-fu-chuan-de-pai-lie-lcof/)

> 思路

先固定一位，不断变更这位的字母并向下递归

>代码

```go

func permutation(s string) []string {
    res := []string{}
    bytes := []byte(s)
    var dfs func(x int)
    dfs = func(x int) {
        if x == len(bytes)-1 {
            res = append(res, string(bytes))
            return
        }
        sMap := make(map[byte]bool)
        for i := x; i < len(bytes); i++ {
            if sMap[bytes[i]] {
                continue
            }
            sMap[bytes[i]] = true
            bytes[i], bytes[x] = bytes[x], bytes[i]
            dfs(x + 1)
            bytes[i], bytes[x] = bytes[x], bytes[i]
        }
    }
    dfs(0)
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :44ms, 在所有 Go 提交中击败了90.03的用户

内存消耗 :7.7MB, 在所有 Go 提交中击败了53.76%的用户
