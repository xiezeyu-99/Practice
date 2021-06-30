# LeetCode-面试题05.07

>题目链接

[LeetCode-面试题05.07](https://leetcode-cn.com/problems/exchange-lcci/)

> 思路


>代码

```go


func exchangeBits(num int) int {
    even := num & 0xaaaaaaaa
    odd := num & 0x55555555
    return even >> 1 | odd << 1
}


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
