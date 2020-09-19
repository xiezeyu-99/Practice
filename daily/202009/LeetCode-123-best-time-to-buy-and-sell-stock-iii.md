# LeetCode-123-best-time-to-buy-and-sell-stock-iii
>题目链接

[LeetCode-123-best-time-to-buy-and-sell-stock-iii](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-iii/)

>思路

动态规划

>代码

```go


func maxProfit(prices []int) int {
    dp_i_0 := []int{0, 0, 0}
    dp_i_1 := []int{math.MinInt64, math.MinInt64, math.MinInt64}
    for _, v := range prices {
        for k := 1; k <= 2; k++ {
            if dp_i_1[k]+v > dp_i_0[k] {
                dp_i_0[k] = dp_i_1[k] + v
            }
            if dp_i_0[k-1]-v > dp_i_1[k] {
                dp_i_1[k] = dp_i_0[k-1] - v
            }
        }
    }
    return dp_i_0[2]
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :124ms, 在所有 Go 提交中击败了26.04%的用户
 
内存消耗 :9.5MB, 在所有 Go 提交中击败了29.94%的用户
