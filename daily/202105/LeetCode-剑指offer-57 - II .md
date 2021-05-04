# LeetCode-剑指offer-57 - II 

>题目链接

[LeetCode-剑指offer-57 - II](https://leetcode-cn.com/problems/he-wei-sde-lian-xu-zheng-shu-xu-lie-lcof/)

> 思路

滑动窗口

>代码

```go

func findContinuousSequence(target int) [][]int {
    slow, fast, sum := 1, 2, 3
    res := [][]int{}
    for fast < target {
        if sum < target {
            fast++
            sum += fast
        } else {
            if sum == target {
                res = append(res, getSlice(slow, fast))
            }
            sum -= slow
            slow++
        }
    }
    return res
}

func getSlice(slow, fast int) []int {
    res := []int{}
    for i := slow; i <= fast; i++ {
        res = append(res, i)
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了61.42%的用户
