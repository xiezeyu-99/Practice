# LeetCode-剑指offer-40

>题目链接

[LeetCode-剑指offer-40](https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/)

> 思路


>代码

```go

func getLeastNumbers(arr []int, k int) []int {
    sort.Ints(arr)
    return arr[:k]
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :44ms, 在所有 Go 提交中击败了48.37的用户

内存消耗 :7.7MB, 在所有 Go 提交中击败了84.32%的用户
