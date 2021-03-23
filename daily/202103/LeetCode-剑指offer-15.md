# LeetCode-剑指offer-15

>题目链接

[LeetCode-剑指offer-15](https://leetcode-cn.com/problems/er-jin-zhi-zhong-1de-ge-shu-lcof/)

> 思路


>代码

```go

func hammingWeight(num uint32) int {
    count:=0
    for num>0{
        if num & 1 == 1 {
            count++
        }
        num = num>>1
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
