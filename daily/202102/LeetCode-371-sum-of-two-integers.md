#  LeetCode-371-sum-of-two-integers

>题目链接

[LeetCode-371-sum-of-two-integers](https://leetcode-cn.com/problems/sum-of-two-integers/)

>思路

a^b获得无进位加法的结果，a&b获得相加后的进位值，左移一位后与a^b的值继续相加，直到进位为0

>代码

```go


func getSum(a int, b int) int {
    for b != 0 {
        sum := a ^ b
        carry := (a & b) << 1
        a = sum
        b = carry
    }
    return a
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(n)

>总结

执行用时 :52ms, 在所有 Go 提交中击败了59.32%的用户
 
内存消耗 :3.8MB, 在所有 Go 提交中击败了15.25%的用户
