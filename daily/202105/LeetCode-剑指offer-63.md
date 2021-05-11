# LeetCode-剑指offer-63

>题目链接

[LeetCode-剑指offer-63](https://leetcode-cn.com/problems/gu-piao-de-zui-da-li-run-lcof/)

> 思路

记录最小值，不断更新收益

>代码

```go

func maxProfit(prices []int) int {
    min := math.MaxInt32
    res:=0
    for i:=0;i<len(prices);i++ {
        if prices[i] < min {
            min = prices[i]
        }
        if prices[i] - min > res {
            res = prices[i] - min
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了94.46%的用户

内存消耗 :3MB, 在所有 Go 提交中击败了28.81%的用户
