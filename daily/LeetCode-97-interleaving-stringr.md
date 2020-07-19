# LeetCode-97-interleaving-stringr

>题目链接

[LeetCode-97-interleaving-stringr](https://leetcode-cn.com/problems/interleaving-string/)

>思路

动态规划，f[i][j]表示s1前i个元素与s2前j个元素是否能组成s3的前i+j-1个元素，其中初始值f[0][0]为true

>代码

```go

func isInterleave(s1 string, s2 string, s3 string) bool {

    f := make([][]bool, len(s1))
    for i := 0; i < len(s1); i++ {
        f[i] = make([]bool, len(s2))
    }

    f[0][0] = true
    for i := 0; i < len(s1); i++ {
        for j := 0; j < len(s2); j++ {
            if i > 0 {
                f[i][j] = f[i][j] || (f[i-1][j] && s1[i-1] == s3[i+j-1])
            }
            if j > 0 {
                f[i][j] = f[i][j] || (f[i][j-1] && s2[j-1] == s3[i+j-1])
            }
        }
    }
    return f[len(s1)][len(s2)]
}


```

>复杂度分析

时间复杂度：O(mn)

空间复杂度：O(mn)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了100.00%的用户
