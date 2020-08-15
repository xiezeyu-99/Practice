# LeetCode-68-text-justificationr
>题目链接

[LeetCode-68-text-justificationr](https://leetcode-cn.com/problems/text-justification/)

>思路

莫名其妙，没看懂

>代码

```go

func fullJustify(words []string, maxWidth int) []string {
    lw := len(words)

    if lw < 1 {
        return words
    }

    var ret []string

    length := 0
    num := 0

    blank := 0
    reminder := 0
    quotient := 0
    last := 0

    for i := 0; i < lw; i++ {
        last = i - 1
        length += len(words[i])
        if length+num < maxWidth {
            num++
            continue
        }

        if length+num == maxWidth {
            num++
            if i == lw-1 {
                break
            }
            last = i
        } else {
            length -= len(words[i])
        }

        tmp := ""
        blank = maxWidth - length

        if num == 1 {
            reminder = 0
            quotient = blank
        } else {
            quotient = blank / (num - 1)
            reminder = blank % (num - 1)
        }

        for j := 0; j < reminder; j++ {
            tmp += words[last-num+j+1]
            for k := 0; k <= quotient; k++ {
                tmp += " "
            }
        }

        m := num - 1
        if num == 1 {
            m = num
        }
        for j := reminder; j < m; j++ {
            tmp += words[last-num+j+1]
            for k := 0; k < quotient; k++ {
                tmp += " "
            }
        }
        if num > 1 {
            tmp += words[last]
        }
        ret = append(ret, tmp)

        if last == i-1 {
            length = len(words[i])
            num = 1
        } else {
            length = 0
            num = 0
        }
    }

    tmp := ""
    for j := num; j > 1; j-- {
        tmp += words[lw-j]
        tmp += " "
    }
    tmp += words[lw-1]

    for k := 0; k < maxWidth-length-num+1; k++ {
        tmp += " "
    }
    ret = append(ret, tmp)
    return ret
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了33.33%的用户
