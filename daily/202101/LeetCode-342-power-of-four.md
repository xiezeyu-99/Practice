# LeetCode-342-power-of-four

>题目链接

[LeetCode-342-power-of-four](https://leetcode-cn.com/problems/power-of-four/)

>思路



>代码

```go

func isPowerOfFour(n int) bool {
    for n%4 == 0 {
        n = n/4
    }
    return n==1
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了100.00%的用户
