# LeetCode-188-best-time-to-buy-and-sell-stock-iv
>题目链接

[LeetCode-188-best-time-to-buy-and-sell-stock-iv](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-iv/)

>思路

动态规划，dp_i_0[i]表示第i天持有0个股票时的最大受益，dp_i_1[i]表示第i天持有1个股票时的最大受益

>代码

```go

func maxProfit(k int, prices []int) int {
    if k>len(prices)/2{
        return maxProfitInf(prices)
    }
    dp_i_0, dp_i_1 := make([]int, k+1), make([]int, k+1)
    for i := 0; i < k+1; i++{
        dp_i_0[i] = 0
        dp_i_1[i] = math.MinInt64
    }
    for _, v := range prices{
        for i := k; i >=1; i--{
            dp_i_0[i] = max(dp_i_0[i], dp_i_1[i] + v)
            dp_i_1[i] = max(dp_i_1[i], dp_i_0[i-1] - v)
        }
    }
    return dp_i_0[k]
}

func max(a,b int) int{
    if a>b{
        return a
    }
    return b
}

func maxProfitInf(prices []int) int {
    if len(prices)<2{
        return 0
    }
    sum:=0
    plen:=len(prices)
    for i:=1;i<plen;i++{
        if prices[i]-prices[i-1]>0{
            sum+=prices[i]-prices[i-1]
        }
    }
    return sum
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :100ms, 在所有 Go 提交中击败了17.37%的用户
 
内存消耗 :3.9MB, 在所有 Go 提交中击败了62.50%的用户
