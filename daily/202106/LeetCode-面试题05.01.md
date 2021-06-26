# LeetCode-面试题05.01

>题目链接

[LeetCode-面试题04.12](https://leetcode-cn.com/problems/paths-with-sum-lcci/)

> 思路

用数组记录后缀和，也就是当前结点为结尾的所有子树的和

>代码

```go

func insertBits(N int, M int, i int, j int) int {
    M <<= i
    for k := i; k <= j; k++ {
        if N&(1<<k) != 0 {
            N^=1<<k
        }
    }
    return N | M
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
