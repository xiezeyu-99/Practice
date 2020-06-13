# LeetCode-10-regular-expression-matching

>题目链接

[LeetCode-10-regular-expression-matching](https://leetcode-cn.com/problems/regular-expression-matching/)

>思路

见注释

>代码

```go

// 任何的匹配都离不开for循环
func isMatch(s string, p string) bool {
    // 创建二维数组做缓存
    dp := make([][]bool, len(s) + 1)
    for k, _ := range dp {
        item := make([]bool, len(p) + 1)
        dp[k] = item
    }

    dp[len(s)][len(p)] = true

    // i := len(s) 之所以设置成这样是因为，要保证空字符串情况下也可以执行一次
    for i := len(s); i>=0; i-- {
        for j := len(p) - 1; j >= 0; j-- {
            // 对当前字符进行比较
            isMatch := (i < len(s) && s[i] == p[j] || p[j] == '.')
            // 判断当前字符的下一个字符是否为* 同时需要判断数组是否越界
            if j + 1 < len(p) && p[j+1] == '*' {
                // dp[i][j+2] 因为*表示可以为0个 所以跳过* 直接判断*下一个位置
                if dp[i][j+2] || i < len(s) && isMatch && dp[i+1][j] {
                    dp[i][j] = true
                } else {
                    dp[i][j] = false
                }
            } else {
                if isMatch && i < len(s) && j < len(p) {
                    dp[i][j] = dp[i+1][j+1]
                } else {
                    dp[i][j] = false
                }
            }
        }
    }

    return dp[0][0]
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n*m)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了50%的用户
