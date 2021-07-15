# LeetCode-面试题16.01

>题目链接

[LeetCode-面试题16.01](https://leetcode-cn.com/problems/swap-numbers-lcci/)

> 思路

>代码

```go

func swapNumbers(numbers []int) []int {
    numbers[0] ^= numbers[1]
    numbers[1] ^= numbers[0]
    numbers[0] ^= numbers[1]
    return numbers
}



```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
