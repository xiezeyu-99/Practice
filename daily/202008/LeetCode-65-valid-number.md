# LeetCode-65-valid-number
>题目链接

[LeetCode-65-valid-number](https://leetcode-cn.com/problems/valid-number/)

>思路

一个个条件去判断

>代码

```go

func isNumber(s string) bool {
    i, n := 0, len(s)
    if n == 0 {
        return false
    }
    for i < n && s[i] == ' ' { // 去除空格
        i++
    }
    if i < n && (s[i] == '+' || s[i] == '-') { // 去除符号
        i++
    }
    if i >= n {
        return false
    }
    start, hasE, hasPoint := i, false, false
    for ; i < n; i++ {
        switch s[i] { // .和e的处理
            case '.':
                if hasPoint || hasE || i == start && (i== n-1 || !isDig(s[i+1])) { // 前面已经出现过.和e，或s[i]不是数字
                    return false
                }
                hasPoint = true
                continue
            case 'e':
                if hasE || i == start || i == n-1 { // e之前已经出现过e，或者e出现开始位置和结束位置时
                    return false
                }
                i++
                if s[i] == '+' || s[i] == '-' {
                    i++
                }
                if i == n || !isDig(s[i]) { // 末尾或者不是数字
                    return false
                }
                hasE = true
                continue
        }
        if s[i] == ' ' { // 遇到空格的处理，若后续还有其他元素则返回false
            for i < n && s[i] == ' ' {
                i++
            }
            if i < n {
                return false
            } else {
                return true
            }
        }
        if !isDig(s[i]) { // s[i]不是数字时
            return false
        }
    }
    return true
}
func isDig(a byte) bool {
    num := int32(a-'0')
    if num >= 0 && num <= 9 {
        return true
    }
    return false
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了100.00%的用户
