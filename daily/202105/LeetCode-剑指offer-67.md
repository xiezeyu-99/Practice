# LeetCode-剑指offer-67

>题目链接

[LeetCode-剑指offer-67](https://leetcode-cn.com/problems/ba-zi-fu-chuan-zhuan-huan-cheng-zheng-shu-lcof/)

> 思路


递归

>代码

```go

func strToInt(str string) int {
    str = strings.TrimSpace(str)
    res := 0
    flag := 1
    for i, v := range str {
        if v >= '0' && v <= '9' {
            res = res*10 + int(v-'0')
        } else if v == '+' && i==0 {
            flag = 1
        } else if v == '-' && i==0 {
            flag = -1
        } else {
            break
        }
        if res > math.MaxInt32 {
            if flag == -1 {
                return math.MinInt32
            } else {
                return math.MaxInt32
            }
        }
    }
    
    return res * flag
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
