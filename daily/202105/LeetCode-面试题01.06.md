# LeetCode-面试题01.06

>题目链接

[LeetCode-面试题01.06](https://leetcode-cn.com/problems/compress-string-lcci/)

> 思路


>代码

```go

func compressString(s string) string {
    l := len(s)
    res := make([]byte, 0, l)
    for i := 0; i < l; i++ {
        count := 1
        for i+1 < l && s[i] == s[i+1] {
            count++
            i++
        }
        res = append(res, s[i])

        res = append(res, []byte(strconv.Itoa(count))...)

        if l <= len(res) {
            return s
        }

    }

    return string(res)
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了95.00%的用户
