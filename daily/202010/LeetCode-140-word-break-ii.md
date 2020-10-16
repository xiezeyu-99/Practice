# LeetCode-140-word-break-ii

>题目链接

[LeetCode-140-word-break-ii](https://leetcode-cn.com/problems/word-break-ii/)

>思路

先动态规划判断是否符合条件，再回溯求结果，直接回溯会超时

>代码

```go

func wordBreak(s string, wordDict []string) []string {
    wMap := make(map[string]bool,len(wordDict)) 
    for _,v := range wordDict {
        wMap[v] = true
    }
    //先通过DP判断字符串是否能被拆分
    dp := make([]bool, len(s)+1)
    dp[0] = true
    for i:=1;i<=len(s);i++ {
        for j:=0;j<i;j++ {
            if dp[j] && wMap[s[j:i]] {
                dp[i] = true
                break
            }
        }
    }
    
    re := []string{}
    if !dp[len(s)] {
        return re
    }
    //回溯走起
    var DFS = func (string,[]string) {}
    DFS = func(ns string,r []string) {
        if len(ns) == 0 {
            re = append(re, strings.Join(r," "))
            return
        }
        for i:=1; i<=len(ns); i++ {
            if wMap[ns[:i]] {
                DFS(ns[i:],append(r,ns[:i]))
            }
        }
    }
    DFS(s,[]string{})
    return re
}

```

>复杂度分析

时间复杂度：O(n^3)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.6MB, 在所有 Go 提交中击败了59.42%的用户
