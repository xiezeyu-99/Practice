# LeetCode-166-fraction-to-recurring-decimal
>题目链接

[LeetCode-166-fraction-to-recurring-decimal](https://leetcode-cn.com/problems/fraction-to-recurring-decimal/)

>思路



>代码

```go

func ABS(v int ) int {
    if v < 0 {return -v}
    return v
}

func fractionToDecimal(numerator int, denominator int) string {
    if denominator == 0 {return "NAN"}
    var tmp string
    if numerator*denominator < 0 {
        tmp += "-"
    }
    numerator,denominator = ABS(numerator),ABS(denominator)
    tmp += strconv.Itoa(numerator/denominator)
    num := numerator%denominator
    if num == 0 {return tmp}
    tmp += "."
    hm := make(map[int]int)
    rptPos := -1
    for {
        num *=10
        if pos,ok := hm[num]; ok {
            rptPos = pos
            break
        } else {
            hm[num] = len(tmp)
        }
        tmp += strconv.Itoa(num/denominator)
        num %= denominator
        if num == 0 {break}
    }
    if rptPos == -1 {
        return tmp
    }
    return fmt.Sprintf("%s(%s)",tmp[:rptPos], tmp[rptPos:])
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了21.13%的用户
