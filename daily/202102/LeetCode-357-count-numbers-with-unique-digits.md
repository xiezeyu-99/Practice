# LeetCode-357-count-numbers-with-unique-digits

>题目链接

[LeetCode-357-count-numbers-with-unique-digits](https://leetcode-cn.com/problems/count-numbers-with-unique-digits/)

>思路


>代码

```go

func countNumbersWithUniqueDigits(n int) int {
    if n == 0 {
        return 1
    }
    first, second := 10, 9
    for i := 1; i < n; i++ {
        second *= 10 - i
        first += second
    }
    return first
}





```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了75.82%的用户
