# LeetCode-338-counting-bits

>题目链接

[LeetCode-338-counting-bits](https://leetcode-cn.com/problems/counting-bits/)

>思路

十进制数除以2相当于二进制数右移一位，也就是1的个数只相差二进制最低位的值，因此可以用动态规划

>代码

```go

func countBits(num int) []int {
    dp := make([]int, num+1)
    dp[0] = 0
    for i := 1; i <= num; i++ {
        dp[i] = dp[i>>1] + (i & 1)
    }
    return dp
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :4.5MB, 在所有 Go 提交中击败了67.25%的用户
