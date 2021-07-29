# LeetCode-面试题16.07

>题目链接

[LeetCode-面试题16.07](https://leetcode-cn.com/problems/maximum-lcci/)

> 思路

a>b时，res = a-0
a<b时，res = a - (a-b)

位运算右移，负数补1，正数补0
res & res>>64
如果res是正数，res>>64就是0，否则就是全1


>代码

```go

func maximum(a int, b int) int {
    res:=a-b
    res= a - res&(res>>64)
    return res
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
