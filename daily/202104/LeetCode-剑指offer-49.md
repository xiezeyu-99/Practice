# LeetCode-剑指offer-49

>题目链接

[LeetCode-剑指offer-49](https://leetcode-cn.com/problems/chou-shu-lcof/)

> 思路

每一个丑数，都是前面的某一个丑数乘以2或者3或者5，用动态规划

>代码

```go

func nthUglyNumber(n int) int {
    a, b, c := 0, 0, 0
    dp := make([]int, n)
    dp[0] = 1

    min := func(i, j int) int {
        if i > j {
            return j
        } else {
            return i
        }
    }

    for i := 1; i < n; i++ {
        t1, t2, t3 := dp[a]*2, dp[b]*3, dp[c]*5
        dp[i] = min(t1, min(t2, t3))
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

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了87.92%的用户
