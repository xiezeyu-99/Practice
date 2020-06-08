# LeetCode-70-climbing-stairs

>题目链接

[LeetCode-70-climbing-stairs](https://leetcode-cn.com/problems/climbing-stairs/)

>思路

1、用一个status数组记录到达第n-1个阶梯的次数，则最终结果为status[n-1]

2、初始化数组全部值都是0，然后每次都可以选择走一阶或者两阶，即第 i 个阶梯的到达次数由 i-1和i-2的次数所决定，动态规划转移方程为status[i] =status[i-1]+status[i-2]

>代码

```go

func climbStairs(n int) int {
    if n<=2{
        return n
    }
    status:=make([]int,n)
    status[0],status[1]=1,2
    for i:=2;i<n;i++{
        status[i] =status[i-1]+status[i-2]
    }
    return status[n-1]
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了63.64%的用户
