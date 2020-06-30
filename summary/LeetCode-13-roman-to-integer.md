# LeetCode-13-roman-to-integer

>题目链接

[LeetCode-13-roman-to-integer](https://leetcode-cn.com/problems/roman-to-integer/)

>思路

硬生生的遍历

>代码

```go

func romanToInt(s string) int {
    num:=0
    for i:=0;i<len(s);i++{
        switch s[i] {
        case 'I':
            if i!=len(s)-1 && s[i+1] == 'V' {
                num += 4
                i++
            } else if i!=len(s)-1 &&s[i+1] == 'X' {
                num += 9
                i++
            } else {
                num += 1
            }
        case 'V':
            num += 5
        case 'X':
            if i!=len(s)-1 && s[i+1] == 'L' {
                num += 40
                i++
            } else if i!=len(s)-1 &&s[i+1] == 'C' {
                num += 90
                i++
            } else {
                num += 10
            }
        case 'L':
            num += 50
        case 'C':
            if i!=len(s)-1 && s[i+1] == 'D' {
                num +=400
                i++
            } else if i!=len(s)-1 &&s[i+1] == 'M' {
                num +=900
                i++
            } else {
                num +=100
            }
        case 'D':
            num += 500
        case 'M':
            num += 1000
        }
    }
    return num
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了95.13%的用户

内存消耗 :3.1MB, 在所有 Go 提交中击败了100.00%的用户
