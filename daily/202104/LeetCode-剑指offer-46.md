# LeetCode-剑指offer-46

>题目链接

[LeetCode-剑指offer-46](https://leetcode-cn.com/problems/ba-shu-zi-fan-yi-cheng-zi-fu-chuan-lcof/)

> 思路



>代码

```go

func translateNum(num int) int {
    if num<10{
        return 1
    }
    var res int

    if num%100<=25 && num%100>9{
        res+=translateNum(num/100)
        res+=translateNum(num/10)
    }else{
        res+=translateNum(num/10)
    }

    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了59.67%的用户
