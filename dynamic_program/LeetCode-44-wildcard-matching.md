# LeetCode-44-wildcard-matching

>题目链接

[LeetCode-44-wildcard-matching](https://leetcode-cn.com/problems/wildcard-matching/)

>思路

遍历，遇到星号就记下位置，然后从匹配0个字符开始尝试，遇到不匹配的情况，则回溯到星号记录的位置，尝试匹配多一个字符。如果没有星号，直接返回false。最后如果模式串没有遍历

完，则检查剩余的是不是星号，如果全部是星号，则匹配，否则不匹配

>代码

```go

func isMatch(s string, p string) bool {
    if len(s) == 0 && len(p) == 0 {
        return true
    }

    if len(p) == 0 {
        return false
    }

    i, j := 0, 0
    pPointer := -1
    sPointer := -1

    for i < len(s) {

        if j < len(p) && (s[i] == p[j] || p[j] == '?') {
            i++
            j++
        } else if j < len(p) && p[j] == '*' {
            pPointer = j + 1
            j++
            sPointer = i
        } else if pPointer != -1 {
            j = pPointer
            i = sPointer + 1
            sPointer++
        }

        return false
    }

    for j < len(p) && p[j] == '*' {
        j++
    }

    return j == len(p)
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.1MB, 在所有 Go 提交中击败了100.00%的用户
