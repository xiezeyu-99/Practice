# LeetCode-190-reverse-bits

>题目链接

[LeetCode-190-reverse-bits](https://leetcode-cn.com/problems/reverse-bits/)

>思路

逐位颠倒，每次&1获得最右一位，然后左移到对称的位置

>代码

```go

func reverseBits(num uint32) uint32 {
    res := uint32(0)
    index := 31
    for num != 0 {
        res += (num & 1) << index
        index--
        num >>= 1
    }
    return res
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了100.00%的用户
