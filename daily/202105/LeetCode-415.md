# LeetCode-415

>题目链接

[LeetCode-415](https://leetcode-cn.com/problems/add-strings/)

> 思路


>代码

```go

func addStrings(num1 string, num2 string) string {
    add := 0
    ans := ""
    for i, j := len(num1) - 1, len(num2) - 1; i >= 0 || j >= 0 || add != 0; i, j = i - 1, j - 1 {
        var x, y int
        if i >= 0 {
            x = int(num1[i] - '0')
        }
        if j >= 0 {
            y = int(num2[j] - '0')
        }
        result := x + y + add
        ans = strconv.Itoa(result%10) + ans
        add = result / 10
    }
    return ans
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了64.10%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了25.92%的用户
