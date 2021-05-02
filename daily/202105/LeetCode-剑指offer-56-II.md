# LeetCode-剑指offer-56-II

>题目链接

[LeetCode-剑指offer-56-II](https://leetcode-cn.com/problems/shu-zu-zhong-shu-zi-chu-xian-de-ci-shu-ii-lcof/)

> 思路

>代码

```go

func singleNumber(nums []int) int {
    h := map[int]int{}
    for _,v := range nums{
        h[v]++
    }
    for i,v := range h{
        if v == 1{
            return i
        }
    }
    return 0
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :32ms, 在所有 Go 提交中击败了70.21%的用户

内存消耗 :6.8MB, 在所有 Go 提交中击败了20.85%的用户
