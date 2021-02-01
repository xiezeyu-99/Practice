# LeetCode-354-russian-doll-envelopes

>题目链接

[LeetCode-354-russian-doll-envelopes](https://leetcode-cn.com/problems/russian-doll-envelopes/)

>思路

动态规划

>代码

```go

func maxEnvelopes(envelopes [][]int) int {
    l := len(envelopes)

    //先根据宽升序，宽如果相等，根据高降序
    //高降序是为了最长子序列选择到相同的宽度
    sort.Slice(envelopes, func(i, j int) bool {
        if envelopes[i][0] < envelopes[j][0] {
            return true
        }
        if envelopes[i][0] == envelopes[j][0] {
            return envelopes[i][1] > envelopes[j][1]
        }
        return false
    })

    dp := make([]int, l)
    res := 0
    for i := 0; i < l; i++ {
        dp[i] = 1
        for j := 0; j < i; j++ {
            if envelopes[j][1] < envelopes[i][1] {
                dp[i] = max(dp[i], dp[j]+1)
            }
        }
        res = max(res,dp[i])
    }
    return res
}

func max(i, j int) int {
    if i > j {
        return i
    } else {
        return j
    }
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :248ms, 在所有 Go 提交中击败了35.64%的用户
 
内存消耗 :6.6MB, 在所有 Go 提交中击败了11.17%的用户
