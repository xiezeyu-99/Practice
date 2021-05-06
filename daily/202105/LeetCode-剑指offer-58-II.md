# LeetCode-剑指offer-58-II

>题目链接

[LeetCode-剑指offer-58-II](https://leetcode-cn.com/problems/zuo-xuan-zhuan-zi-fu-chuan-lcof/)

> 思路


>代码

```go

func reverseLeftWords(s string, n int) string {
    byteSlice:= []byte(s)
    byteSlice = append(byteSlice[n:], byteSlice[0:n]...)
    return string(byteSlice)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了61.42%的用户
