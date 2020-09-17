# LeetCode-122-best-time-to-buy-and-sell-stock-ii
>题目链接

[LeetCode-122-best-time-to-buy-and-sell-stock-ii](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/)

>思路

寻找递增的段，计算首尾的差

>代码

```go


func maxProfit(prices []int) int {
    ans := 0
    for i := 0; i < len(prices); i++ {
        low := i
        for i+1 < len(prices) && prices[i] < prices[i+1] {
            i++
        }
        heigh := i
        if low != heigh {
            ans += prices[heigh] - prices[low]
        }

    }

    return ans
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :3MB, 在所有 Go 提交中击败了100.00%的用户
