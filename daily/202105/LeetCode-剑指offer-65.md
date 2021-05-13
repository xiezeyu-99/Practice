# LeetCode-剑指offer-65

>题目链接

[LeetCode-剑指offer-65](https://leetcode-cn.com/problems/bu-yong-jia-jian-cheng-chu-zuo-jia-fa-lcof/)

> 思路

相加，原位变为与运算的结果，进位为异或运算的结果，递归叠加进位

递归

>代码

```go

func add(a int, b int) int {
    var carry int
    for b != 0 {
        carry = (a & b) << 1
        a ^= b
        b = carry
    }
    return a
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了60.94%的用户
