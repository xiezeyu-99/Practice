# LeetCode-172-factorial-trailing-zeroes

> 题目链接

[LeetCode-172-factorial-trailing-zeroes](https://leetcode-cn.com/problems/factorial-trailing-zeroes/)

> 思路

1，两数相乘末尾有0，说明乘的数中有2和5，所以可以将n!转化为分解为多少个（2,5）对；

2，因为每个偶数都能分解出因子2，所以2肯定比因子5多，所以可以将n!转化为分解为多少个因子5；
（例如：20! 中 5 可以提供一个，10 可以提供一个，15 可以提供一个，20 可以提供一个，总共有 4 个因子 5，所以 20! 的结果末尾就有 4 个 0。）

>代码

```go

func trailingZeroes(n int) int {
    c:=0
    for n>0{
        c=c+n/5
        n=n/5
    }
    return c
}


```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了21.13%的用户
