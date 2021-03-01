#  LeetCode-397-integer-replacement

>题目链接

[LeetCode-397-integer-replacement](https://leetcode-cn.com/problems/integer-replacement/)

>思路

偶数，就是二进制第一位是0，可以直接右移。奇数，二进制第一位是1，需要先做一步操作变成偶数，才能开始右移。奇数二进制的前两位，只有01和11两种，目的是减少奇数操

作，也就是1尽量少，可知01应该减去1,11应该加上1

>代码

```go

func integerReplacement(num int) int {
    count := 0
    for num > 1 {
        if num%2 == 0 {
            num = num >> 1
        } else {
            if num == 3 {
                num--
            } else if num&2 == 0 {
                num--
            } else {
                num++
            }
        }
        count++
    }
    return count
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
