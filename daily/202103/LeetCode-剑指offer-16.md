# LeetCode-剑指offer-16

>题目链接

[LeetCode-剑指offer-16](https://leetcode-cn.com/problems/shu-zhi-de-zheng-shu-ci-fang-lcof/)

> 思路


>代码

```go

func myPow(x float64, n int) float64 {
    if n == 0{
        return 1
    }
    if n == 1{
        return x
    }
    if n<0{
        x = 1/x
        n = -n
    }
    temp := myPow(x , n/2)
    if n%2 == 0{
        return temp*temp
    }
    return x*temp*temp
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了96.27%的用户
