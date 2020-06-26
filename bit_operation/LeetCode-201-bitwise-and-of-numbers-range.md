# LeetCode-201-bitwise-and-of-numbers-range

>题目链接

[LeetCode-201-bitwise-and-of-numbers-range](https://leetcode-cn.com/problems/bitwise-and-of-numbers-range/)

>思路

寻找公共前缀，公共前缀按位与等于原数，然后左移补0

>代码

```go

func rangeBitwiseAnd(m int, n int) int {
   shift := 0
    for m != n {
        m = m >> 1
        n = n >> 1
        shift++
    }
    return m << shift
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了94.86%的用户

内存消耗 :6.1MB, 在所有 Go 提交中击败了66.67%的用户
