#  LeetCode-剑指offer-10- I

>题目链接

[LeetCode-剑指offer-10- I](https://leetcode-cn.com/problems/fei-bo-na-qi-shu-lie-lcof/)

>思路



>代码

```go

func fib(n int) int {
    if n == 0 {
        return 0
    } else if n==1 {
        return 1
    }
    a,b:=0,1
    res:=0
    for i:=2;i<=n;i++ {
        res = (a + b)% 1000000007
        a, b= b,res
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了42.73%的用户
