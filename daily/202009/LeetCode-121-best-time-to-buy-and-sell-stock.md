# LeetCode-121-best-time-to-buy-and-sell-stock
>题目链接

[LeetCode-121-best-time-to-buy-and-sell-stock](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/)

>思路

记录历史最低价，然后计算遍历到的那天卖出时的利润

>代码

```go


func maxProfit(prices []int) int {
    minPrice := math.MaxInt32
    maxProfit := 0

    for i := 0; i < len(prices); i++ {
        if prices[i] < minPrice {
            minPrice = prices[i]
        } else if prices[i]-minPrice > maxProfit {
            maxProfit = prices[i] - minPrice
        }
    }
    return maxProfit
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了97.13%的用户
 
内存消耗 :3MB, 在所有 Go 提交中击败了94.12%的用户
