# LeetCode-50-powx-n
>题目链接

[LeetCode-50-powx-n](https://leetcode-cn.com/problems/powx-n/)

>思路

快速幂算法

如果n是偶数，x^n = x^(n/x) * x^(n/x)

如果n是奇数，x^n = x^(n/x) * x^(n/x) * x

>代码

```go

func myPow(x float64, n int) float64 {
    if n >= 0 {
        return cal(x, n)
    }
    return 1.0/cal(x, -n)
}

func cal(x float64,n int) float64 {
    if n == 0 {
        return 1
    }

    ans := cal(x, n/2)
    if n%2 == 0 {
        return ans * ans
    } else {
        return ans * ans * x
    }
}


```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了63.80%的用户
