# LeetCode-面试题08.14

>题目链接

[LeetCode-面试题08.14](https://leetcode-cn.com/problems/boolean-evaluation-lcci/)

> 思路

>代码

```go

//dp[i][j][0/1]，表示s[i:j+1]结果为0/1的括号方法种数
func countEval(s string, result int) int {
    dp := make([][][2]int, len(s))
    for i := 0; i < len(dp); i++ {
        dp[i] = make([][2]int, len(s))
    }
    //dp[0][len-1][result]即为答案，i需要倒序遍历，j正序遍历
    for i := len(s) - 1; i >= 0; i -= 2 {
        for j := i; j < len(s); j += 2 {
            if i == j {
                if s[i] == '0' {
                    dp[i][j][0]++
                } else {
                    dp[i][j][1]++
                }
                continue
            }
            /*
                操作符s[k]将s[i:j+1]分为s[i:k]和s[k+1:j+1]分为前后两块
                遍历各自dp[i][k-1][0/1]和dp[k+1][j][0/1]共四种情况，累计dp[i][j][0/1]的值
            */
            for k := i + 1; k < j; k += 2 {
                for arg1 := 0; arg1 <= 1; arg1++ {
                    for arg2 := 0; arg2 <= 1; arg2++ {
                        if doBoolOp(arg1, arg2, s[k]) == 0 {
                            dp[i][j][0] += dp[i][k-1][arg1] * dp[k+1][j][arg2]
                        } else {
                            dp[i][j][1] += dp[i][k-1][arg1] * dp[k+1][j][arg2]
                        }
                    }
                }

            }
        }
    }
    return dp[0][len(s)-1][result]
}

func doBoolOp(arg1, arg2 int, operator byte) int {
    if operator == '&' {
        return arg1 & arg2
    } else if operator == '|' {
        return arg1 | arg2
    } else {
        return arg1 ^ arg2
    }
}





```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
