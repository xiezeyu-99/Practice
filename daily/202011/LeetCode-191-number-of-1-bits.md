# LeetCode-191-number-of-1-bits
>题目链接

[LeetCode-191-number-of-1-bits](https://leetcode-cn.com/problems/number-of-1-bits/)

>思路

奇数的二进制表示的第一位是1，偶数是0，判断nums的奇偶，然后nums右移一位，继续判断奇偶，一直到nums为0为止

>代码

```go

func hammingWeight(num uint32) int {
    count := 0
    for num > 0 {
        if num%2 != 0 {
            count++
        }
        num = num >> 1
    }
    return count
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了50.39%的用户
