# LeetCode-剑指offer-64

>题目链接

[LeetCode-剑指offer-64](https://leetcode-cn.com/problems/qiu-12n-lcof/)

> 思路

递归

>代码

```go


func sumNums(n int) int {
    ans := 0
    var sum func(int) bool
    sum = func(n int) bool {
        ans += n
        return n > 0 && sum(n-1)
    }
    sum(n)
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了60.94%的用户
