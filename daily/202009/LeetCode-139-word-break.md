# LeetCode-139-word-break

> 题目链接

[LeetCode-139-word-break](https://leetcode-cn.com/problems/word-break/)

> 思路

动态规划，dp[i]表示截止第i个字母位置，能不能用空格分隔，转移方程为dp[i] = dp[j] && dict[s[j:i]]

> 代码

```go

func wordBreak(s string, wordDict []string) bool {
    dict :=make(map[string]bool)

    for _,v:=range wordDict{
        dict[v] = true
    }
    dp:=make([]bool, len(s)+1)
    dp[0] = true

    for i:=range dp{
        for j:=0;j<i;j++{
            if dp[j]&&dict[s[j:i]]{
                dp[i] = true
                break
            }
        }
    }
    return dp[len(dp)-1]

}



```

> 复杂度分析

时间复杂度：O(n^2)

空间复杂度： O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了36.82%的用户

