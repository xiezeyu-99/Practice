#  LeetCode-396-rotate-function

>题目链接

[LeetCode-396-rotate-function](https://leetcode-cn.com/problems/rotate-function/)

>思路

动态规划，每次右移，除了最后一个数外，其余的所有数字的因子都加1，结果等于加上数组和，再减去最后一个数字与数组长度的乘积

>代码

```go

func maxRotateFunction(A []int) int {
    if len(A) == 0 {
        return 0
    }
    now := 0
    sum := 0
    last := len(A) - 1
    for i := range A {
        now += i * A[i]
        sum += A[i]
    }
    max := now
    for n := 1; n < len(A); n++ {
        now += sum - A[last]*len(A)
        if now > max {
            max = now
        }
        last--
    }
    return max
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了93.94%的用户
 
内存消耗 :3.7MB, 在所有 Go 提交中击败了81.82%的用户
