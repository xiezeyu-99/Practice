# LeetCode-面试题16.11-diving-board-lcci

>题目链接

[LeetCode-面试题16.11-diving-board-lcci](https://leetcode-cn.com/problems/diving-board-lcci/)

>思路

要求从小到大排列，所以长板从0开始

>代码

```go

func divingBoard(shorter int, longer int, k int) []int {
    if k==0 {
        return []int{}
    }
    if shorter == longer{
        return []int{shorter*k}
    }
    var result []int

    for i:=0;i<=k;i++{
        result = append(result,longer*i+shorter*(k-i))
    }
    return result
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了89.17%的用户

内存消耗 :7.1MB, 在所有 Go 提交中击败了100.00%的用户
