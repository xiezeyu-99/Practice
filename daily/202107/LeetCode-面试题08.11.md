# LeetCode-面试题08.11

>题目链接

[LeetCode-面试题08.11](https://leetcode-cn.com/problems/coin-lcci/)

> 思路


>代码

```go

func waysToChange(n int) int {
    coins:=[]int{1,5,10,25}

    dp:=make([]int, n+1)
    dp[0] = 1
    for i:=0;i<len(coins);i++{
        for j:=1;j<=n;j++{
            if j - coins[i] >= 0{
                dp[j] += dp[j - coins[i]] 
            }
        }
    }
    return dp[n]%1000000007
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
