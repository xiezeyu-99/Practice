# LeetCode-面试题05.04

>题目链接

[LeetCode-面试题05.04](https://leetcode-cn.com/problems/closed-number-lcci/)

> 思路


>代码

```go

func findClosedNumbers(num int) []int {
    find := 0
    ans := []int{-1, -1}
    sn := 0
    on := uint(0) // sn中1的个数
    for num > 0 {
        pn := num & (-num)
        num &= num - 1
        // 1<<30判断是否超出范围
        if pn&(1<<30) == 0 && num&(pn<<1) == 0 && ans[0] == -1 {
            ans[0] = num | (pn << 1) | (1<<on - 1)
            find++
        }
        // pn<=1无略小值
        if pn > 1 && sn&(pn>>1) == 0 && ans[1] == -1 {
            ans[1] = num | (pn >> 1) | ((pn>>1 - 1) ^ (pn>>1-1)>>on)
            find++
        }
        if find == 2 {
            break
        }
        sn |= pn
        on++
    }
    return ans
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
