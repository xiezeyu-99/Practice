#  LeetCode-264-ugly-number-ii

>题目链接

[LeetCode-264-ugly-number-ii](https://leetcode-cn.com/problems/ugly-number-ii/)

>  思路

动态规划，每次从已知的丑数中分别乘以2 3 5，取最小值作为下一个数

>代码

```go

func nthUglyNumber(n int) int {
    a, b, c := 0, 0, 0
    dp := make([]int, n, n)
    for i := 0; i < n; i++ {
        dp[i] = 1
    }
    min := func(a, b int) int {
        if a > b {
            return b
        }
        return a
    }
    for i := 1; i < n; i++ {
        t1, t2, t3 := dp[a]*2, dp[b]*3, dp[c]*5
        dp[i] = min(min(t1, t2), t3)
        if dp[i] == t1 {
            a++
        }
        if dp[i] == t2 {
            b++
        }
        if dp[i] == t3 {
            c++
        }
    }
    return dp[n-1]
}

```


>总结

执行用时 :4ms, 在所有 Go 提交中击败了66.95%的用户
 
内存消耗 :4.2MB, 在所有 Go 提交中击败了71.30%的用户
