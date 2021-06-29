# LeetCode-面试题05.06

>题目链接

[LeetCode-面试题05.06](https://leetcode-cn.com/problems/convert-integer-lcci/)

> 思路

1. 异或
2. r&（r-1）可以把r的最后一位1变成0，其余不变

>代码

```go

func convertInteger(A int, B int) int {
    r:=int32(A^B)
    count:=0
    for r!=0{
       count++
       r = r&(r-1)
    }
    return count
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
