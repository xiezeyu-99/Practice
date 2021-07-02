# LeetCode-面试题08.01

>题目链接

[LeetCode-面试题08.01](https://leetcode-cn.com/problems/three-steps-problem-lcci/)

> 思路


>代码

```go


func waysToStep(n int) int {
    p, q, r := 0, 0, 1
    for i := 1; i <= n; i++ {
        p, q, r = q, r, (p + q + r) % 1000000007
    }
    return r
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
