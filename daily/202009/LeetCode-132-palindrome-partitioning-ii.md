# LeetCode-132-palindrome-partitioning-ii
>题目链接

[LeetCode-132-palindrome-partitioning-ii](https://leetcode-cn.com/problems/palindrome-partitioning-ii/)

>思路

动态规划，dp[i]表示i位置最少分割次数，先找到可以作为回文串中点的位置，然后双指针向两边扩展找到最长的回文串，此时左右指针之间的字符串无需分割，为一个整体

如果左指针到达了0位置，则右指针的动态规划值就是0

否则，右指针的动态规划值等于左指针左边一个位置的值加上1

>代码

```go


func minCut(s string) int {
    lens := len(s)

    dp := make([]int, lens)
    for i := 0; i < lens; i++ {
        dp[i] = lens
    }

    for m := 0; m < lens; m++ {
        for d := 0; d <= 1; d++ {
            i := m
            j := i + d
            for ; i >= 0 && j < lens && s[i] == s[j]; i, j = i-1, j+1 {
                if i == 0 {
                    dp[j] = 0
                } else {
                    dp[j] = min(dp[j], dp[i-1]+1)
                }
            }
        }
    }
    return dp[lens-1]
}
func min(x, y int) int {
    if x < y {
        return x
    }
    return y
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了78.99%的用户
