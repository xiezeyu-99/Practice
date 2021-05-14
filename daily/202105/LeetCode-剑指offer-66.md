# LeetCode-剑指offer-66

>题目链接

[LeetCode-剑指offer-66](https://leetcode-cn.com/problems/gou-jian-cheng-ji-shu-zu-lcof/)

> 思路

先倒序相乘

递归

>代码

```go

func constructArr(a []int) []int {
    b:=make([]int, len(a))   
    temp:=1
    for i:=len(a)-1;i>=0;i-- {
        b[i] = temp
        temp *= a[i]
    }

    temp=1
    for i:=0;i<len(a);i++ {
        b[i] *= temp
        temp *= a[i]
    }
    return b
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了79.25%的用户

内存消耗 :2.8.3MB, 在所有 Go 提交中击败了68.5%的用户
